#!/bin/sh

echo "WARNING: an error on disk's ID could be fatal !"
echo "id disk USB (obtain with diskutil list)" 
read usbdiskN
diskutil partitionDisk $usbdiskN 1 GPT HFS+ newdisk R
sudo /Applications/Install\ OS\ X\ El\ Capitan.app/Contents/Resources/createinstallmedia --volume /Volumes/newdisk --applicationpath /Applications/Install\ OS\ X\ El\ Capitan.app/ --nointeraction
