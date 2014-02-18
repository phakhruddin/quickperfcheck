#!/bin/bash
Date="`date +%Y%m%d`";while sleep 5;do date >> /root/PERF/vmstat-stat.out.$Date;vmstat 1 4 >> /root/PERF/vmstat-stat.out.$Date;NewDate="`date +%Y%m%d`";[ $NewDate -eq $Date ] || { exit 1; };done
