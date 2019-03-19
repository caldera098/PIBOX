VALUE=$(cat ~/.audio/value)
if [ "$(cat ~/.audio/income)" = 2 ];
  then
    if [ "$VALUE" -le '95' ];
     then
      let VALUE=$VALUE+5
      $(amixer sset 'PCM' ${VALUE}%)
      $(echo $VALUE > ~/.audio/value)
      else
    $(amixer sset 'PCM' 100%)
    let $VALUE=100
    fi
fi
if [ "$(cat ~/.audio/income)" = 1 ];
  then
    if [ "$VALUE" -ge '5' ];
     then 
      let VALUE=$VALUE-5
      $(amixer sset 'PCM' ${VALUE}%)
      else
      $(amixer sset 'PCM' 0%)
      let VALUE=0
    fi
fi
      $(echo $VALUE > ~/.audio/value)
