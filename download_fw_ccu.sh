#!/bin/sh
TARGETDIR=/usr/local/etc/config/firmware
TMPDIR=/tmp/fwtmp
   
[[ ! -z $1 ]] && PARAM=$1
if [[ "$PARAM" == "-o" ]]; then echo "Overwriting existing contents!";fi
if [[ "$PARAM" == "-c" ]]; then echo "Clearing all firmware files"; rm -rf ${TARGETDIR}/*; fi

ccu_model=`grep VERSION /boot/VERSION   | awk -F'[=.]' {'print $2'}`
ccu_version=`grep VERSION /boot/VERSION | awk -F'[=.]' {'print $3'}`
ccu_build=`grep VERSION /boot/VERSION   | awk -F'[=.]' {'print $4'}`
echo "Running CCU3 Firmware $ccu_model.$ccu_version.$ccu_build"
echo "Getting firmware list"
output=`curl -s 'https://update.homematic.com/firmware/api/firmware/search/DEVICE' | sed s/'homematic.com.setDeviceFirmwareVersions('/''/ | sed s/');'/''/ |  jq -r '.[] | "\(.type)"'`

cnt=`echo "$output"|wc -w|xargs`
i=0

[ ! -d ${TMPDIR} ] && mkdir -p ${TMPDIR}
rm -f ${TMPDIR}/*
cd ${TMPDIR}

for row in ${output}; do
  i=$((i+1))
  echo -n "Downloading firmware file $i of $cnt (${row}) ["

  curl -s -q -O -J -L  "https://ccu3-update.homematic.com/firmware/download?cmd=download&serial=0&product=${row}"

  for f in *gz; do
    tar -xzf $f
    rm $f
    id=`grep TypeCode info | awk -F= {'print $2'}|xargs`
    fw_model=`grep CCU3FirmwareVersionMin info | awk -F'[=.]' {'print $2'}`
    fw_version=`grep CCU3FirmwareVersionMin info | awk -F'[=.]' {'print $3'}`
    fw_build=`grep CCU3FirmwareVersionMin info | awk -F'[=.]' {'print $4'}|xargs`
    echo -n "${id}] FW min. Version: $fw_model.$fw_version.$fw_build "
    fw_ok=0
    if [ "$fw_model" == "$ccu_model" ]; then 
      if [ $fw_version -lt $ccu_version ]; then
        fw_ok=1
      elif [ $fw_version -eq $ccu_version ]; then 
        if [ $fw_build -le $ccu_build ]; then                                                                 
         fw_ok=1                                                           
        fi
      fi
    fi
    if [ $fw_ok -eq 1 ]; then
      echo "OK"
      if [ ! -d ${TARGETDIR}/$id ]; then       
        mkdir -p ${TARGETDIR}/$id       
        mv * ${TARGETDIR}/$id/          
      else                              
        if [[ "$PARAM" == "-o" ]]; then 
          rm -rf ${TARGETDIR}/$id/*     
          mv * ${TARGETDIR}/$id/        
        fi                             
      fi
    else
      echo "NOT OK"
    fi
  done
done
