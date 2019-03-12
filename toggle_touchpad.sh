# toggles touchpad on gnome3. Useful if you don't have a toggle touchpad key.
t=$(gsettings get org.gnome.desktop.peripherals.touchpad send-events)
echo "touchpad $t"
if [ "$t" = "'enabled'" ]; then
		gsettings set org.gnome.desktop.peripherals.touchpad send-events disabled
	else
		gsettings set org.gnome.desktop.peripherals.touchpad send-events enabled
fi


