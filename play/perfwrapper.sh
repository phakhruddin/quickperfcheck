#!/bin/bash
[ $1 ] || { echo "Usage: $0 eth0, aborting ..."; exit 1; }
if="$1"
[ -d /root/PERF/ ] || mkdir /root/PERF/
echo "/root/PERF/checkiostat.sh &
/root/PERF/checkneterror.sh $if &
/root/PERF/checknetstatanp.sh &
/root/PERF/checknetstat-s.sh &
/root/PERF/checknstat.sh &
/root/PERF/topstat.sh &
/root/PERF/vmstat-stat.sh &"
