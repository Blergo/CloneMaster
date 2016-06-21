#!/bin/bash

FLAG="/var/log/firstboot.log"
if [ ! -f $FLAG ]; then

	systemctl enable getty@tty1.service
   touch $FLAG
else

fi