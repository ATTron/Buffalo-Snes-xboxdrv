echo "This program uses your controller event number."
echo "Run evtest to find your event number"
sleep 3

# Get event number for controller

read -p "Enter event number: " event
echo "Okay! disabling xpad . . ."

# disable xpad to start xboxdrv service

$(rmmod xpad)
echo "xpad disabled . . . starting xboxdrv"
echo "Which controller are you using?"
echo "1) Buffalo classic USB gamepad"
echo "2) PS3 Dualshock 3"
read controller

# execute xboxdrv

if [ "$controller" == "1" ]; then
	$(systemctl start xboxdrv.service)
	exec sudo xboxdrv --evdev /dev/input/event"$event" --evdev-absmap ABS_X=dpad_x,ABS_Y=dpad_y --evdev-keymap BTN_TRIGGER=a,BTN_THUMB=b,BTN_THUMB2=x,BTN_TOP=y,BTN_TOP2=lt,BTN_PINKIE=rt,BTN_BASE=Back,BTN_BASE2=Start --mimic-xpad --silent

elif [ "$controller" == "2" ]; then
	$(systemctl start xboxdrv.service --detach-kernel-driver)
	exec sudo xboxdrv --silent --detach-kernel-driver
fi
