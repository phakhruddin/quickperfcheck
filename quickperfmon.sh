#!/bin/bash
DIR=/root/PERF
[ -d $DIR ] || mkdir $DIR
##
cat << _checkiostat.sh_ > $DIR/checkiostat.sh
#!/bin/bash
Date="`date +%Y%m%d`";while sleep 60;do date >> /root/PERF/iostat-xn.out.$Date;iostat -xn 10 6 >> /root/PERF/iostat-xn.out.$Date;NewDate="`date +%Y%m%d`";[ $NewDate -eq $Date ] || { exit 1; };done
_checkiostat.sh_
##
cat << _checknetstatanp.sh_ > $DIR/checknetstatanp.sh
#!/bin/bash
Date="`date +%Y%m%d`";while sleep 30;do date >> /root/PERF/netstat-anp.out.$Date;netstat -anp >> /root/PERF/netstat-anp.out.$Date;NewDate="`date +%Y%m%d`";[ $NewDate -eq $Date ] || { exit 1; };done
_checknetstatanp.sh_
##
cat << _checknetstat-s.sh_ > $DIR/checknetstat-s.sh
#!/bin/bash
Date="`date +%Y%m%d`";while sleep 60;do date >> /root/PERF/netstat-s.out.$Date;netstat -s >> /root/PERF/netstat-s.out.$Date;NewDate="`date +%Y%m%d`";[ $NewDate -eq $Date ] || { exit 1; };done
_checknetstat-s.sh_
##
cat << _checknstat.sh_ > $DIR/checknstat.sh
#!/bin/bash
Date="`date +%Y%m%d`";while sleep 30;do date >> /root/PERF/nstat.out.$Date;nstat -a >> /root/PERF/nstat.out.$Date;NewDate="`date +%Y%m%d`";[ $NewDate -eq $Date ] || { exit 1; };done
_checknstat.sh_
## 
cat << _topstat.sh_ > $DIR/topstat.sh
#!/bin/bash
Date="`date +%Y%m%d`";while sleep 30;do date >> /root/PERF/topstat.out.$Date;top -b -n1 >> /root/PERF/topstat.out.$Date;NewDate="`date +%Y%m%d`";[ $NewDate -eq $Date ] || { exit 1; };done
_topstat.sh_
