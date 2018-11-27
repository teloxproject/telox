
Debian
====================
This directory contains files used to package teloxd/telox-qt
for Debian-based Linux systems. If you compile teloxd/telox-qt yourself, there are some useful files here.

## telox: URI support ##


telox-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install telox-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your teloxqt binary to `/usr/bin`
and the `../../share/pixmaps/telox128.png` to `/usr/share/pixmaps`

telox-qt.protocol (KDE)

