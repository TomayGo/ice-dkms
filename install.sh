#!/bin/bash

apt install pve-headers wget unzip dkms
mkdir e810
cd e810
wget https://downloadmirror.intel.com/831137/Release_29.3.zip
unzip Release_29.3.zip
cd PROCGB/Linux
tar xvf ice-1.15.4.tar.gz
curl https://raw.githubusercontent.com/TomayGo/ice-dkms/main/dkms.conf -o ice-1.15.4/dkms.conf
cp -R ice-1.15.4/ /usr/src/ice-1.15.4
cd ../../
dkms add -m ice -v 1.15.4
dkms build -m ice -v 1.15.4
dkms install -m ice -v 1.15.4
