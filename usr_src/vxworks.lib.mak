#  vxworks.mak - for bzip2
#
# Copyright (c) 2013,2016,2017 Wind River Systems, Inc.
#
# This file is released under the terms of the bzip2-1.0.6 license. 
# A copy of the license can be found  at www.spdx.org/licenses.
#
#  modification history
#  --------------------
#  09feb17,dlk  Build both shared and static objects. (This fixes
#               a problem in the Boost layer build.)
#  30nov12,brk  written
#

RTP_BASE_DIR = bzip2

LIB_BASE_NAME = bz2

OBJS= blocksort.o  \
      huffman.o    \
      crctable.o   \
      randtable.o  \
      compress.o   \
      decompress.o \
      bzlib.o

LIB_FORMAT = both

include $(WIND_USR_MK)/rules.library.mk

ifeq ($(TOOL),diab)
CFLAGS_bzlib.o =  -ei4111
endif
