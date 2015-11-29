echo "This program uses your controller event number."
echo "Run evtest to find your event number"
sleep 3
read -p "Enter event number: " event
echo "Okay! disabling xpad . . ."
echo $path
$(rmmod xpad)
echo "xpad disabled . . . starting xboxdrv"
$(systemctl start xboxdrv.service)
echo "xboxdrv started . . . configuring controller"
exec sudo xboxdrv --evdev /dev/input/event"$event" --evdev-absmap ABS_X=dpad_x,ABS_Y=dpad_y --evdev-keymap BTN_TRIGGER=a,BTN_THUMB=b,BTN_THUMB2=x,BTN_TOP=y,BTN_TOP2=lt,BTN_PINKIE=rt,BTN_BASE=Back,BTN_BASE2=Start --mimic-xpad --silent
