#!/bin/bash
Date="`date +%Y%m%d`";while sleep 30;do date >> /root/PERF/nstat.out.$Date;nstat -a >> /root/PERF/nstat.out.$Date;NewDate="`date +%Y%m%d`";[ $NewDate -eq $Date ] || { exit 1; };done
