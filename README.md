# framework12

FreeBSD on frame.work 12th gen: these settings and config files worked for me
when I moved to my frame.work 13" notebook with 12th gen Intel CPU.

Obviously, YMMV.

Use powersave.sh to switch to a low power mode, disabling unnecessary components
and USB ports and limit CPU use to the upper two low-power cores.

In sysctl.conf, you will find that cores are initialized in low power mode right
after bootup. You can choose to switch to other values (i.e. 50 or lower) if you
so desire.

You will need to merge rc.conf into your own, because it does not set a hostname
and other relevant settings.

If you have any suggestions or improvements you like to share, feel free to
reach out or run a pull request.

