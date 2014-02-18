#!/bin/bash
Date="`date +%Y%m%d`";while sleep 60;do date >> /root/PERF/netstat-s.out.$Date;netstat -s >> /root/PERF/netstat-s.out.$Date;NewDate="`date +%Y%m%d`";[ $NewDate -eq $Date ] || { exit 1; };done
