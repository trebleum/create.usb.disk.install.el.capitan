!#/bin/sh

echo "id du disk USB" 
read usbdiskN
diskutil partitionDisk $usbdiskN 1 GPT HFS+ newdisk R
sudo /Applications/Install\ OS\ X\ El\ Capitan.app/Contents/Resources/createinstallmedia --volume /Volumes/newdisk --applicationpath /Applications/Install\ OS\ X\ El\ Capitan.app/ --nointeraction
