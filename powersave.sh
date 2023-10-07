#!/bin/sh
# this did give errors but still put USB bus into power save
usbconfig -d ugen0.1 power_save
usbconfig -d ugen1.1 power_save
# turn off webcam
usbconfig -d ugen1.2 power_off
usbconfig -d ugen1.3 power_off

sysctl hw.snd.latency=7
sysctl hw.pci.do_power_nodriver=3

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
		sysctl dev.hwpstate_intel.8.epp=100
		sysctl dev.hwpstate_intel.9.epp=100
		sysctl dev.hwpstate_intel.10.epp=100
		sysctl dev.hwpstate_intel.11.epp=100
		sysctl dev.hwpstate_intel.12.epp=100
		sysctl dev.hwpstate_intel.13.epp=100
		sysctl dev.hwpstate_intel.14.epp=100
		sysctl dev.hwpstate_intel.15.epp=100
		sysctl hw.pci.do_power_nodriver=3
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

cpuset -C -l 14-15 -p 0
cpuset -l 14-15 -s -1
cpuset -l 14-15 -s 1
