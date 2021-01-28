#!/bin/dash

while true; do
  bar_date=$(date +"[DATE: %a %b %d %I:%M %p]")
  bar_audio="[VOL: $(pamixer --get-volume-human)]"
  bar_pack="[UPGRADE: $(pacman -Qu | wc -l)]"
  bar_mem=$(free -m | awk 'NR==2{printf "[MEM: %.2f%% (%d Mb)]", $3*100/$2, $3}')
  bar_cpu="[CPU: $(top -b -n1 | grep 'Cpu(s)' | awk '{print $2 + $4}')%]"

  xsetroot -name "${bar_cpu} ${bar_mem} ${bar_pack} ${bar_audio} ${bar_date}"
  sleep 1s
done
