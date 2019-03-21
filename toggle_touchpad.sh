# toggles touchpad on gnome3. Useful if you don't have a toggle touchpad key.
t=$(gsettings get org.gnome.desktop.peripherals.touchpad send-events)
if [ "$t" = "'enabled'" ]; then
		gsettings set org.gnome.desktop.peripherals.touchpad send-events disabled
		echo " - Touchpad is now DISABLED."
	else
		gsettings set org.gnome.desktop.peripherals.touchpad send-events enabled
		echo " - Touchpad is now ENABLED."
fi

