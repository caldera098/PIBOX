if test $(cat ~/.fan/incoming) == 1
        then
        {
                $(echo 5 > /dev/ttyS0);
                $(echo "-" > /dev/ttyS0);
        }
fi

if test $(cat ~/.fan/incoming) == 2
        then
        {
                $(echo 5 > /dev/ttyS0);
                $(echo "*" > /dev/ttyS0);
        }
fi

if test $(cat ~/.fan/incoming) == 3
        then
        {
                $(echo 4 > /dev/ttyS0);
                $(echo "-" > /dev/ttyS0);
        }
fi

if test $(cat ~/.fan/request) == 8
	then
        {
                $(echo 5 > /dev/ttyS0);
                $(echo "-" > /dev/ttyS0);
        }
fi

if test $(cat ~/.fan/request) == 9
	then
	{
		if test $(cat ~/.fan/incoming) == 2
			then
        		{
                		$(echo 5 > /dev/ttyS0);
                		$(echo "*" > /dev/ttyS0);
			}
		fi
		if test $(cat ~/.fan/incoming) == 3
			then
			{
                		$(echo 4 > /dev/ttyS0);
                		$(echo "-" > /dev/ttyS0);
        		}
		fi
	}
fi
