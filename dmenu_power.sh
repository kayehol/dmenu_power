#!/bin/bash
result=$(echo -e "Lock\nReboot\nPower off" | dmenu)

if [[ "${result}" = "Power off" ]]; then
  systemctl poweroff -i
elif [[ "${result}" = "Lock" ]]; then
  i3lock --nofork --color=0f3c4c
elif [[ "${result}" = "Reboot" ]]; then
  systemctl reboot
fi
