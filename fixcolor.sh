xrandr --output LVDS-0 --gamma 0.8:0.8:0.8
brightness=`cat /sys/class/backlight/intel_backlight/brightness`
max_brightness=`cat /sys/class/backlight/intel_backlight/max_brightness`
new_brightness=$(($1 * $max_brightness/100))
echo $new_brightness > /sys/class/backlight/intel_backlight/brightness
