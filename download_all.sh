#!/bin/bash

echo "Getting firmware list"
output=`curl -s 'https://update.homematic.com/firmware/api/firmware/search/DEVICE' | sed s/'homematic.com.setDeviceFirmwareVersions('/''/ | sed s/');'/''/ |  jq -r '.[] | "\(.type)"'`
cnt=`wc -w <<< "$output"|xargs`
i=0
for row in ${output}; do
  i=$((i+1))
  echo -n -e "Downloading firmware file $i of $cnt (${row}).              \r"
  curl -s -q -O -J -L  "https://ccu3-update.homematic.com/firmware/download?cmd=download&serial=0&product=${row}"
done
echo ""
echo "Moving files into directories"
for f in *gz; do
  pref=`ls $f|awk -F'[-_]' {'print $1'}`
  case $pref in
    ([Hh][Mm]) pref="HM";;
    ([Hh][Mm][Ii][Pp]) pref="HmIP";;
    ([Hh][Mm][Ii][Pp][Ww]) pref="HmIPW";;
    ([Ee][Ll][Vv]) pref="ELV";;
  esac
  [ ! -d $pref ] && mkdir $pref
  mv $f $pref/
done
