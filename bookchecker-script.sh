#!/bin/bash

#path variable crontab savior
PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin

keyword="Dost"

url1="http://priam.umcs.lublin.pl:8080/lib/item?id=chamo:677482"

title1="Dlaczego nie rozmawiam juz z bialymi o kolorze skory"

availability="jest dostępna w Bibliotece UMCS"

if(curl -# "$url1" | grep -v "jako e-book." | grep "$keyword" > /dev/null) then
    echo `date` "$title1 $availability"
    notify-send "$title1 $availability"
else
    notify-send "Żadna książka nie jest dostępna"
    echo `date` "Żadna książka nie jest dostępna"
fi
