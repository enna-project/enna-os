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

# download_directory
AC_MSG_CHECKING([download_directory])
m4_define([ennaos_default_download_directory], [./downloads])
AC_ARG_ENABLE([download_directory], [AS_HELP_STRING([--enable-download_directory=M],
		     set DOWNLOAD_DIRECTORY (default: "ennaos_default_download_directory"))],
		     [],
		     [enable_download_directory="ennaos_default_download_directory"])
AC_SUBST([download_directory], [$enable_download_directory])
AC_MSG_RESULT([$enable_download_directory])


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

# bitbake
AC_MSG_CHECKING([bitbake])
m4_define([bitbake_layer_location], ['${TOPDIR}/src/bitbake'])
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
m4_define([oecore_layer_location], ['${TOPDIR}/src/openembedded-core/meta'])
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
m4_define([ennaos_layer_location], ['${TOPDIR}/src/meta-enna'])
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

m4_define([metaoe_layer_location], ['${TOPDIR}/src/meta-openembedded/meta-oe'])
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

m4_define([metaallwinner_layer_location], ['${TOPDIR}/src/meta-allwinner'])
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

# metaangstrom
AC_MSG_CHECKING([metaangstrom])

m4_define([metaangstrom_layer_location], ['${TOPDIR}/src/meta-angstrom'])
m4_define([ennaos_default_metaangstrom], ['True'])
AC_ARG_ENABLE([metaangstrom], [AS_HELP_STRING([--enable-metaangstrom],
		     [configure to include metaangstrom (default: enabled)])],
		     [enable_metaangstrom=$enableval],
		     [enable_metaangstrom=ennaos_default_metaangstrom])
case "$enable_metaangstrom" in
     no) enable_metaangstrom_layer='' ;;
     *) enable_metaangstrom_layer=metaangstrom_layer_location ;;
esac
AC_SUBST([metaangstrom], $enable_metaangstrom)
AC_SUBST([metaangstrom_layer], $enable_metaangstrom_layer)
AC_MSG_RESULT([$metaangstrom])



AC_CONFIG_FILES([Makefile:conf.in/Makefile.in])
AC_CONFIG_FILES([conf/bblayers.conf:conf.in/bblayers.conf.in])
AC_CONFIG_FILES([conf/local.conf:conf.in/local.conf.in])
AC_OUTPUT
