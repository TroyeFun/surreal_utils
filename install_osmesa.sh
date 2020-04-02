#!/bin/bash
cd $(mktemp -d)
for url in http://mirror.centos.org/centos/7/os/x86_64/Packages/mesa-libOSMesa-18.0.5-3.el7.x86_64.rpm http://mirror.centos.org/centos/7/os/x86_64/Packages/mesa-libOSMesa-devel-18.0.5-3.el7.x86_64.rpm http://download-ib01.fedoraproject.org/pub/epel/7/x86_64/Packages/p/patchelf-0.9-10.el7.x86_64.rpm; do
    curl $url | rpm2cpio | cpio -id
done
mkdir ~/.local
cp -a usr/* ~/.local/
