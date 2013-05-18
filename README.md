enna-os
=======

Set of OpenEmbedded/Yoco META to build images for calaos and enna.

To build an image for atom n450 :

git clone https://github.com/enna-project/enna-os.git

cd enna-os

git submodule init

git submodule update

source env.sh

bitbake calaos-image

You can change the MACHINE in conf/local.conf
You can use the following machines : n450 mele cubieboard rasberrypi olinuxino-a13 beagleboard qemux86

