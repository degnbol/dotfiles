# make a custom keyboard layout with greek letters accessed through holding alt,
# and the same for æ, ø, å.
# ` and ~ are moved next to shift, ^$ are moved next to number line. 
# Useful characters ("%", "*", "&", "(", and ")") are added with alt on different locations.
# put the map file in the keybinding folder:
sudo cp custom /usr/share/X11/xkb/symbols/
# have the file recognized by adding the entry to evdev.xml. First backup.
sudo cp /usr/share/X11/xkb/rules/evdev.xml{,.bak}
# copy the entry for custom layout to clipboard
cat evdev_layout_entry.xml | xclip -sel clip
# paste it as last entry (right before </layoutList>, search for it in the file)
sudoedit /usr/share/X11/xkb/rules/evdev.xml
# now go and select keyboard in settings -> input devices -> keyboard -> layout -> add new -> english -> custom
