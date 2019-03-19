if [ "$(cat ~/.audioin/incoming)" = 1 ];
then
                if [ "$(cat ~/.audioin/status)" = 1 ];
                        then
                                        echo "Already started."
                        else
                                $(arecord -f dat - | aplay -D duplex - & echo $! > ~/.audioin/PID | echo "1" > ~/.audioin/status)
fi
fi
if [ "$(cat ~/.audioin/incoming)" = 0 ];
 then
                if [ "$(cat ~/.audioin/status)" = 0 ];
                        then
                                        echo "Already stopped."
                        else
                                $(sudo kill $(cat ~/.audioin/PID) | echo "0" > ~/.audioin/status)
fi
fi
