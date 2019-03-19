#!/bin/bash
VALUE=$(cat /home/pi/.audio/value)
IN=$(cat /home/pi/.audio/income)
if [ "$IN" -eq '2' ];
  then
    if [ "$VALUE" -le '95' ];
     then
      let VALUE=$VALUE+5
      amixer sset 'Master' ${VALUE}%
      $(echo $VALUE > /home/pi/.audio/value)
      else
    amixer sset 'Master' 100%
    let $VALUE=100
    fi
fi
if [ "$IN" -eq '1' ];
  then
    if [ "$VALUE" -ge '5' ];
     then
      let VALUE=$VALUE-5
      amixer sset 'Master' ${VALUE}%
      else
      amixer sset 'Master' 0%
      let VALUE=0
    fi
fi
      $(echo $VALUE > /home/pi/.audio/value)
