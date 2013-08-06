#!/bin/sh
#ugly hack to remove bbappend which doesn't exists with our various revisions

rm -rf src/meta-ti/recipes-misc/images/cloud9-gnome-image.bb
rm -rf src/meta-ti/recipes-misc/images/cloud9-image.bb
rm -rf src/meta-ti/recipes-misc/images/ti-hw-bringup-image.bb
rm -rf src/meta-ti/recipes-misc/images/cloud9-gfx-image.bb
rm -rf src/meta-intel/common/recipes-graphics/mesa/mesa_9.1.5.bbappend
rm -rf src/meta-openembedded/meta-systemd/oe-core/recipes-core/util-linux/util-linux_2.23.1.bbappend

