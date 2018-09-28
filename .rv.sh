#!/bin/bash
sudo apt install -y python-gi-dev gir1.2-gtk-3.0 mono-mcs qtbase5-dev intltool libevent-dev libtool gtk+-2.0 gtk+-3.0 libgdbm-dev libdaemon-dev python-dbus monodoc-base xmltoman tzdata gtk-sharp2
./bootstrap.sh --disable-qt4
export RVP_TRACE_ONLY=yes
export RVP_TRACE_FILE=/dev/null
make
make check
