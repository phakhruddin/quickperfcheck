#!/bin/bash
[ $1 ] || { echo Usage: $0 eth0 ; exit 1 ;}
Date="`date +%Y%m%d`";while sleep 30;do date >> /root/PERF/neterror.out.${1}.$Date;ip -s -s link ls $1 >> /root/PERF/neterror.out.${1}.$Date;NewDate="`date +%Y%m%d`";[ $NewDate -eq $Date ] || { exit 1; };done
