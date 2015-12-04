# xboxdrv_controller_configs

xboxdrv_controller_configs - script to map snes & ps3 controllers to work with steam using xboxdrv & evtest running in arch linux.

# Usage

### Important

At this time this script has only been tested in [arch linux](https://www.archlinux.org/) and requires the following:
* [xboxdrv](https://aur.archlinux.org/packages/xboxdrv/)
* [evtest](https://www.archlinux.org/packages/community/x86_64/evtest/)

## Controller

The controller is the [Buffalo Classic USB Gamepad](http://www.amazon.com/Buffalo-Classic-USB-Gamepad-PC/dp/B002B9XB0E) & the [Sony Playstation dualshock 3/PS3 controller](http://www.amazon.com/PlayStation-Dualshock-Wireless-Controller-Black-3/dp/B0015AARJI). I may add more controller configurations later.

## Running the script

Run ```evtest``` inside a terminal to determine your controllers event number which should be printed out ```/dev/input/eventN``` where N is the event number. My controller gets displayed as ```/dev/input/event13```

Run the script and enter in your event number and the script will configure your controller to be recognized as a 360 controller for use in Steam. The script starts and stops services which will require your password if you are not root while running.