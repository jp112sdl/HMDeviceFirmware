TARGETDIR=/usr/local/etc/config/firmware
TMPDIR=/tmp/fwtmp
   
[[ ! -z $1 ]] && PARAM=$1
if [[ "$PARAM" == "-o" ]]; then echo "Overwriting existing contents!";fi
if [[ "$PARAM" == "-c" ]]; then echo "Clearing all firmware files"; rm -rf ${TARGETDIR}/*; fi

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
    echo "${id}]"
    if [ ! -d ${TARGETDIR}/$id ]; then
      mkdir -p ${TARGETDIR}/$id
      mv * ${TARGETDIR}/$id/
    else
      if [[ "$PARAM" == "-o" ]]; then
        rm -rf ${TARGETDIR}/$id/*
        mv * ${TARGETDIR}/$id/
      fi
    fi
  done
done
