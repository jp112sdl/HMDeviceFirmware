#!/bin/bash

rm -f run_*
rm -f *.tar.gz
rm -f *.tgz
current_date=`date +%Y-%m-%d-%H-%M-%S`
runfile="run_${current_date}.txt"
touch ${runfile}

ip=$(curl -s https://api.ipify.org)
echo "External IP: $ip" | tee -a ${runfile}

echo "Getting firmware list" | tee -a ${runfile}
output=`curl -s 'https://update.homematic.com/firmware/api/firmware/search/DEVICE' | sed s/'homematic.com.setDeviceFirmwareVersions('/''/ | sed s/');'/''/ |  jq -r '.[] | "\(.type)"'|sort -u`
cnt=`wc -w <<< "$output"|xargs`
i=0
for row in ${output}; do
  i=$((i+1))
  echo -n -e "Downloading firmware file $i of $cnt (${row}).              \r" | tee -a ${runfile}
  printf "\n" >> ${runfile}
  curl -fsSLOJ  "https://ccu3-update.homematic.com/firmware/download?cmd=download&serial=0&product=${row}"
done
echo "" | tee -a ${runfile}
echo "Moving files into directories" | tee -a ${runfile}
echo "## Homematic Device Firmware Changelogs" > ./docs/index.md
for f in *gz; do
  pref=`ls $f|awk -F'[-_]' {'print $1'}`
  
  changelog=`tar -ztf $f|grep changelog.txt||true`
  if [ -z "$changelog" ]; then
    echo "$f has no changelog.txt" | tee -a ${runfile}
  else
    tar -zxf $f changelog.txt 
    mv changelog.txt ./changelogs/${f%%.*}_changelog.md
  fi
  
  echo "- [${f%%.*}](./changelogs/${f%%.*}_changelog.md)" >> ./docs/index.md
  echo "" >> ./docs/index.md
  
  case $pref in
    ([Hh][Mm]) pref="HM";;
    ([Hh][Mm][Ii][Pp]) pref="HmIP";;
    ([Hh][Mm][Ii][Pp][Ww]) pref="HmIPW";;
    ([Ee][Ll][Vv]) pref="ELV";;
  esac
  [ ! -d $pref ] && mkdir $pref
  mv $f $pref/
done
echo "Done." | tee -a ${runfile}
