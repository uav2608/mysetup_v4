#!/bin/sh

myip=$(wget -qO - ipv4bot.whatismyipaddress.com)

#Code
DISPLAY=:0 notify-send $myip --icon=dialog-information
