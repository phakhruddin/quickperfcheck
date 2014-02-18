#!/bin/bash
Date="`date +%Y%m%d`";while sleep 30;do date >> /root/PERF/netstat-anp.out.$Date;netstat -anp >> /root/PERF/netstat-anp.out.$Date;NewDate="`date +%Y%m%d`";[ $NewDate -eq $Date ] || { exit 1; };done
