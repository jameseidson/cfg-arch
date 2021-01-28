xset r rate 200 30
xrandr --output DP-0 --mode 2560x1440 --rate 165
xinput set-prop 8 "Coordinate Transformation Matrix" 1 0 0 0 1 0 0 0 0.5
feh --bg-scale ~/cfg/wall.jpg &

~/cfg/dwm/bar.sh &
exec dwm
