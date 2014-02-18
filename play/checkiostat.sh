#!/bin/bash
Date="`date +%Y%m%d`";while sleep 60;do date >> /root/PERF/iostat-xn.out.$Date;iostat -xn 10 6 >> /root/PERF/iostat-xn.out.$Date;NewDate="`date +%Y%m%d`";[ $NewDate -eq $Date ] || { exit 1; };done
