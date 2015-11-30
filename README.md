# Buffalo-SNES-xboxdrv

Buffalo Snes xboxdrv - script to map snes controller to work with steam using xboxdrv & evtest

# Usage

### Important

At this time this script has only been tested in [arch linux](https://www.archlinux.org/) and requires the following:
* [xboxdrv](https://aur.archlinux.org/packages/xboxdrv/)
* [evtest](https://www.archlinux.org/packages/community/x86_64/evtest/)

## Controller

The controller is the [Buffalo Classic USB Gamepad](http://www.amazon.com/Buffalo-Classic-USB-Gamepad-PC/dp/B002B9XB0E). Currently this is the only controller I have tested the script on but I may add more controller configurations later.

## Running the script

run '''evtest''' inside a terminal to determine your controllers event number which should be printed out '''/dev/input/eventN''' where N is the event number. My controller gets displayed as '''/dev/input/event13'''

Run the script and enter in your event number and the script will configure your controller to be recognized as a 360 controller for use in Steam. The script starts and stops services which will require your password if you are not root while running.

On my computer, the controller does not start functioning until about a minute after xboxdrv starts.