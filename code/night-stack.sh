#!/bin/bash
#./b.sh
#rv=$?
rv=1
#echo $rv
while [[ $rv -ne 0 ]]
do
	echo return value is $rv

	sleep 10
#	./a.sh
#	./b.sh
	./devstack/unstack.sh >/dev/null
	#./unstack.sh
	sleep 10
	./devstack/stack.sh >/dev/null

	rv=$?
done

exit 0
