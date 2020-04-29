Useful packages :
- grub : boot loader
	- efibootmgr : manage efi partition
	- os-prober : autodection of other mounted os
- nvidia : nvidia driver (should look into nouveau)
	- nvidia-utils
- mtools
- dosfstools
- man-db
- neofetch : system spec fetcher
- xprop : X11 windows properties fetcher

I generated the file `/etc/X11/xorg.conf.d/00-keyboard.conf` with "systemd-localed" to have my keyboard as "fr" in Xorg session.

Made file `/etc/X11/xorg.conf.d/10-monitor.conf" for the dual monitor configuration.

They are use by X11 on start.

For lightdm, I can create an `~/.xprofile`. It is load before shell !
https://wiki.archlinux.org/index.php/LightDM#X_Session_wrapper

On firefox, overload when scrolling.
https://www.reddit.com/r/firefox/comment/a00vfi/spike_in_cpu_usage_on_all_cores_when_scrolling_on/
