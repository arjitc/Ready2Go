#!/bin/bash
 
logo="$(tput setaf 2)
       .~~.   .~~.
      '. \ ' ' / .'$(tput setaf 1)
       .~ .~~~..~.    $(tput sgr0)                   _                          _ $(tput setaf 1)
      : .~.'~'.~. :   $(tput sgr0)   ___ ___ ___ ___| |_ ___ ___ ___ _ _    ___|_|$(tput setaf 1)
     ~ (   ) (   ) ~  $(tput sgr0)  |  _| .'|_ -| . | . | -_|  _|  _| | |  | . | |$(tput setaf 1)
    ( : '~'.~.'~' : ) $(tput sgr0)  |_| |__,|___|  _|___|___|_| |_| |_  |  |  _|_|$(tput setaf 1)
     ~ .~ (   ) ~. ~  $(tput sgr0)              |_|                 |___|  |_|    $(tput setaf 1)
      (  : '~' :  )
       '~ .~~~. ~'
           '~'
$(tput sgr0)"
 
if [ `whoami` != "root" ]; then
  echo "$logo"
  echo "Run as root to update your motd."
else
  echo "$logo" > /etc/motd.tail
  /etc/init.d/bootlogs
  echo "Updated MOTD. Log in to see the new logo."
fi
