# How to recover after a system meltdown

Step 1) Create Live USB.(https://itsfoss.com/create-live-usb-manjaro-linux/)

Step 2) Identify the partitions by doing a live boot followed by `lsblk -f` 
Step 3) Chroot into the root(/) partition and take a dump of installed packages (https://itsfoss.com/create-live-usb-manjaro-linux/) in home partition (/home).

Step 4) Reinstall Manjaro in root partition.

Step 5) install `yay` followed by the all the packages in the dump.

Step 6) Change default shell to zsh using chsh -l 

Step 7) sudo update-grub

Step 8) Enable services like bluetooth