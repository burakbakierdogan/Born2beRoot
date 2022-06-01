#! /bin/bash

wall "	#Architecture:$(uname -a)
	#CPU physical : $(nproc)
	#vCPU : $(cat /proc/cpuinfo | grep processor | wc -l)
	#Memory Usage: $(free -m | grep Mem: | awk '{print $3,"/",$2, "(",100*$3/$2, "%",")"}')
	#Disk Usage: $(df | awk 'NR>1 {total += $3} END {print total/1024,"/ 27Gb","(",(100*total/1024)/(1024*27),"%",")"}')
	#CPU load: $(mpstat | grep all | awk '{print 100-$13,"%"}')
	#Last boot: $(who -b | awk '{print $3, $4}')
	#LVM use: $(if grep -q mapper /etc/fstab
			then
				echo yes
			else
				echo no
			fi)
	#Connections TCP : $(ss -s | grep TCP: | awk '{print $4}' | sed 's/,/ /') ESTABLISHED
	#User Log: $(w | awk ' NR>2 {print $0}' | wc -l)
	#Network: IP $(ifconfig -a | grep -m 1 inet | awk '{print $2}') ($(ip addr show | grep link/ether | awk '{print $2}'))
	#Sudo : $( grep --text sudo: /var/log/auth.log | wc -l) cmd
	"

