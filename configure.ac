# Process this file with autoconf to produce a configure script.

# Original Copyright
# Copyright (c) 2008 - 2012 Hewlett-Packard Development Company, L.P.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

AC_INIT(ennaos, 1.0)
AC_PREREQ([2.61])
AC_COPYRIGHT([Copyright 2012 Enna Project])

# parallel_make
AC_MSG_CHECKING([parallel_make])
m4_define([ennaos_default_parallel_make], [1])
AC_ARG_ENABLE([parallel-make], [AS_HELP_STRING([--enable-parallel-make=N],
		     maximum number of tasks for each submake of bitbake to spawn (default: "ennaos_default_parallel_make"))],
		     [],
		     [enable_parallel_make="ennaos_default_parallel_make"])
case "$enable_parallel_make" in
     no|yes) enable_parallel_make=1 ;;
esac
AC_SUBST([parallel_make], [$enable_parallel_make])
AC_MSG_RESULT([$enable_parallel_make])

# bb_number_threads
AC_MSG_CHECKING([bb_number_threads])
m4_define([ennaos_default_bb_number_threads], [1])
AC_ARG_ENABLE([bb-number-threads], [AS_HELP_STRING([--enable-bb-number-threads=N],
		     maximum number of tasks for each submake of bitbake to spawn (default: "ennaos_default_bb_number_threads"))],
		     [],
		     [enable_bb_number_threads="ennaos_default_bb_number_threads"])
case "$enable_bb_number_threads" in
     no|yes) enable_bb_number_threads=1 ;;
esac
AC_SUBST([bb_number_threads], [$enable_bb_number_threads])
AC_MSG_RESULT([$enable_bb_number_threads])

# premirror
AC_MSG_CHECKING([premirror])
m4_define([ennaos_default_premirror], [http://downloads.yoctoproject.org/mirror/sources])
AC_ARG_ENABLE([premirror], [AS_HELP_STRING([--enable-premirror=M],
		     set PREMIRROR (default: "ennaos_default_premirror"))],
		     [],
		     [enable_premirror="ennaos_default_premirror"])
AC_SUBST([premirror], [$enable_premirror])
AC_MSG_RESULT([$enable_premirror])

# generate-mirror-tarballs
AC_MSG_CHECKING([generate_mirror_tarballs])
AC_ARG_ENABLE([generate_mirror_tarballs], [AS_HELP_STRING([--enable-generate-mirror-tarballs],
		     generate tarballs suitable for mirroring (default: "False"))],
		     [case "$enableval" in
yes) enable_generatemirrortarballs="1" ;;
no) enable_generatemirrortarballs="0" ;;
esac],
		     [enable_generatemirrortarballs="0"])
AC_SUBST([generatemirrortarballs], [$enable_generatemirrortarballs])
AC_MSG_RESULT([$enable_generatemirrortarballs])

# bitbake
AC_MSG_CHECKING([bitbake])
m4_define([bitbake_layer_location], ['${PALMDIR}/bitbake'])
m4_define([bitbake_default_bitbake], ['True'])
AC_ARG_ENABLE([bitbake], [AS_HELP_STRING([--enable-bitbake],
		     [configure to include bitbake (default: enabled)])],
		     [],
		     [enable_bitbake=bitbake_default_bitbake])
case "$enable_bitbake" in
     True|yes) enable_bitbake_layer=bitbake_layer_location ;;
     *) enable_bitbake_layer='' ;;
esac
AC_SUBST([bitbake], $enable_bitbake)
AC_SUBST([bitbake_layer], $enable_bitbake_layer)
AC_MSG_RESULT([$bitbake])

# oecore
AC_MSG_CHECKING([oecore])
m4_define([oecore_layer_location], ['${PALMDIR}/openembedded-core/meta'])
m4_define([oecore_default_oecore], ['True'])
AC_ARG_ENABLE([oecore], [AS_HELP_STRING([--enable-oecore],
		     [configure to include oecore (default: enabled)])],
		     [enable_oecore=$enableval],
		     [enable_oecore=oecore_default_oecore])
case "$enable_oecore" in
     no) enable_oecore_layer='' ;;
     *) enable_oecore_layer=oecore_layer_location ;;
esac
AC_SUBST([oecore], $enable_oecore)
AC_SUBST([oecore_layer], $enable_oecore_layer)
AC_MSG_RESULT([$oecore])

# meta-enna
AC_MSG_CHECKING([ennaos])
m4_define([metaenna_layer_location], ['${PALMDIR}/meta-enna'])
m4_define([ennaos_default_ennaos], ['True'])
AC_ARG_ENABLE([ennaos], [AS_HELP_STRING([--enable-ennaos],
		     [configure to include ennaos (default: enabled)])],
		     [enable_ennaos=$enableval],
		     [enable_ennaos=ennaos_default_ennaos])
case "$enable_ennaos" in
     no) enable_ennaos_layer='' ;;
     *) enable_ennaos_layer=ennaos_layer_location ;;
esac
AC_SUBST([ennaos], $enable_ennaos)
AC_SUBST([ennaos_layer], $enable_ennaos_layer)
AC_MSG_RESULT([$ennaos])

# metaoe
AC_MSG_CHECKING([metaoe])

m4_define([metaoe_layer_location], ['${PALMDIR}/meta-oe/meta-oe'])
m4_define([ennaos_default_metaoe], ['True'])
AC_ARG_ENABLE([metaoe], [AS_HELP_STRING([--enable-metaoe],
		     [configure to include metaoe (default: enabled)])],
		     [enable_metaoe=$enableval],
		     [enable_metaoe=ennaos_default_metaoe])
case "$enable_metaoe" in
     no) enable_metaoe_layer='' ;;
     *) enable_metaoe_layer=metaoe_layer_location ;;
esac
AC_SUBST([metaoe], $enable_metaoe)
AC_SUBST([metaoe_layer], $enable_metaoe_layer)
AC_MSG_RESULT([$metaoe])

# metaallwinner
AC_MSG_CHECKING([metaallwinner])

m4_define([metaallwinner_layer_location], ['${PALMDIR}/meta-allwinner'])
m4_define([ennaos_default_metaallwinner], ['True'])
AC_ARG_ENABLE([metaallwinner], [AS_HELP_STRING([--enable-metaallwinner],
		     [configure to include metaallwinner (default: enabled)])],
		     [enable_metaallwinner=$enableval],
		     [enable_metaallwinner=ennaos_default_metaallwinner])
case "$enable_metaallwinner" in
     no) enable_metaallwinner_layer='' ;;
     *) enable_metaallwinner_layer=metaallwinner_layer_location ;;
esac
AC_SUBST([metaallwinner], $enable_metaallwinner)
AC_SUBST([metaallwinner_layer], $enable_metaallwinner_layer)
AC_MSG_RESULT([$metaallwinner])



AC_CONFIG_FILES([Makefile:build-templates/Makefile.in])
AC_CONFIG_FILES([bitbake.rc:build-templates/bitbake-rc.in])
AC_CONFIG_FILES([conf/bblayers.conf:build-templates/bblayers-conf.in])
AC_CONFIG_FILES([conf/local.conf:build-templates/local-conf.in])
AC_OUTPUT
