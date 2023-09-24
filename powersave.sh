#!/bin/sh
service jail onestop browser

# downgrade UI for improved battery life
killall picom

usbconfig -d ugen0.1 power_off
usbconfig -d ugen1.1 power_off
# turn off webcam
usbconfig -d ugen1.2 power_off
usbconfig -d ugen1.3 power_off

sysctl hw.snd.latency=7
sysctl hw.pci.do_power_nodriver=3

EXTREME=0

while getopts 'xwb' opt; do
	case "$opt" in
		x)
		sysctl dev.hwpstate_intel.0.epp=100
		sysctl dev.hwpstate_intel.1.epp=100
		sysctl dev.hwpstate_intel.2.epp=100
		sysctl dev.hwpstate_intel.3.epp=100
		sysctl dev.hwpstate_intel.4.epp=100
		sysctl dev.hwpstate_intel.5.epp=100
		sysctl dev.hwpstate_intel.6.epp=100
		sysctl dev.hwpstate_intel.7.epp=100
		sysctl hw.pci.do_power_nodriver=3
		# sysctl hw.acpi.video.lcd0.brightness=10
		;;
		w)
		devctl suspend iwlwifi0
		devctl disable iwlwifi0
		;;
		b)
		/usr/bin/backlight 10
		;;
	esac
done
sysctl hw.usb.disable_port_power=1
