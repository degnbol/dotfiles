# to make snap apps work like normal apps you sometimes have to set them as default applications to handle things and link their .desktop files.
# E.g. to make zoom work
ln -s /var/lib/snapd/desktop/applications/zoom-client_zoom-client.desktop ~/.local/share/applications/zoom-snap.desktop
# make sure the default application is set so google login will work in zoom.
cat mimeapps.list >> ~/.local/share/applications/mimeapps.list


