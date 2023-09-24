# framework12

FreeBSD on frame.work 12th gen: these settings and config files worked for me
when I moved to my frame.work 13" notebook with 12th gen Intel CPU.

Obviously, YMMV.

Use powersave.sh to switch to a low power mode, disabling unnecessary components
and USB ports and limit CPU use to the upper two low-power cores.

In `sysctl.conf`, you will find that cores are initialized in low power mode right
after bootup. You can choose to switch to other values (i.e. 50 or lower) if you
so desire.

You will need to merge `rc.conf` into your own, because it does not set a hostname
and other relevant settings.

If you have any suggestions or improvements you like to share, feel free to
reach out or run a pull request.

# Expected battery life

My tests so far have shown that I can get up to 10-11 hours with battery charged
at around 80%. I'm seeing 3-5W draw on an idle system. So the more you load the
system with I/O or CPU work, the more power it will obviusly draw and shorten
battery life.

If you're using a reasonably low-power window manager, you can probably expect
around 8 hours of work on battery.


