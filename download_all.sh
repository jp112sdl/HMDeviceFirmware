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
cp ./docs/_index.template ./docs/index.md.tmp
for f in *gz; do
  pref=`ls $f|awk -F'[-_]' {'print $1'}`
  
  #parse info file
  infofile=`tar -ztf $f|grep info||true`
  if [ -z "$infofile" ]; then
    echo "$f has no info file" | tee -a ${runfile}
  else
    tar -zxf $f info
    fwversion=`grep "FirmwareVersion=" info|cut -d "=" -f 2`
    fwversion=${fwversion//[$'\n\r']/}
    fwdevicename=`grep "Name=" info|cut -d "=" -f 2`
    fwdevicename=${fwdevicename//[$'\n\r']/}
  fi
  
  #parse changelog
  changelog=`tar -ztf $f|grep changelog.txt||true`
  if [ -z "$changelog" ]; then
    echo "$f has no changelog.txt" | tee -a ${runfile}
  else
    tar -zxf $f changelog.txt
    iconv -f ISO-8859-1 -t UTF-8 changelog.txt > ./docs/changelogs/changelog_${f%%.*}.md
    rm changelog.txt
    echo "| ${fwdevicename} | [V${fwversion}](changelogs/changelog_${f%%.*}.md) |" >> ./docs/index.md.tmp
  fi

  case $pref in
    ([Hh][Mm]) pref="HM";;
    ([Hh][Mm][Ii][Pp]) pref="HmIP";;
    ([Hh][Mm][Ii][Pp][Ww]) pref="HmIPW";;
    ([Ee][Ll][Vv]) pref="ELV";;
  esac
  [ ! -d $pref ] && mkdir $pref
  mv $f $pref/
done
[ -f "info" ] && rm info
cat ./docs/index.md.tmp | sort > ./docs/index.md
rm ./docs/index.md.tmp
echo "Done." | tee -a ${runfile}
