#!/bin/bash

OUTPUT=`ibam --percentbattery`
PERCENT=`echo $OUTPUT | cut -d " " -f 3`

if [ $PERCENT -lt 5 ]; then
    MSG="Battery low. $PERCENT % left"
    DISPLAY=:0.0 /usr/bin/gmessage -geometry 300x100+10+10 -center -title Warning $MSG
fi

