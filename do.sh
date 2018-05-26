if test $(cat incoming)==1 then
		if test $(cat status)==1
			then
					echo "Already started."
			else
				$(arecord -r 48000 -f SU_32LE - | aplay -D duplex - & echo $! > PID | echo "1" > status)
		fi
fi

if test $(cat incoming)==0 then
		if test $(cat status)==0
			then
					echo "Already stopped."
			else
				$(sudo kill $(cat PID) | echo "0" > status)
		fi
fi				
