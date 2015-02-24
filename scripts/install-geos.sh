#!/usr/bin/env bash
echo "Starting installation of GEOS"
wget http://download.osgeo.org/geos/geos-3.4.2.tar.bz2
tar -xjvf geos-3.4.2.tar.bz2
cd geos-3.4.2/
./configure --enable-php
make
make install
cat > /etc/php5/mods-available/geos.ini << EOF
; configuration for php geos module
; priority=50
extension=geos.so
EOF
php5enmod geos
