#!/bin/bash 

WID=35651589

DELAY=1.3

sleep 1

echo "goto Telegram window"
xdotool windowactivate $WID

echo "Set skill"
xdotool type "/setskill_49323456"
xdotool key Return
sleep 2

for j in {1..100}
do 
	xdotool windowactivate $WID

	echo "Restore"
	xdotool type "/restore"
	xdotool key Return
	sleep 2

	echo "Gua Bawah Tanah"
	xdotool type "Gua Bawah Tanah"
	xdotool key Return
	sleep 2

	for i in {1..47}
	do
		xdotool windowactivate $WID

		echo "Nambang - $i - $j"
		xdotool mousemove 724 556 click 1 &
		sleep $DELAY
	done
done 
