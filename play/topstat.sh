#!/bin/bash
Date="`date +%Y%m%d`";while sleep 30;do date >> /root/PERF/topstat.out.$Date;top -b -n1 >> /root/PERF/topstat.out.$Date;NewDate="`date +%Y%m%d`";[ $NewDate -eq $Date ] || { exit 1; };done
