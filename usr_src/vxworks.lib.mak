#  vxworks.mak - for bzip2
#
# Copyright (c) 2013,2016 Wind River Systems, Inc.
#
# This file is released under the terms of the bzip2-1.0.6 license. 
# A copy of the license can be found  at www.spdx.org/licenses.
#
#  modification history
#  --------------------
#  06oct16,brk  license
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



include $(WIND_USR_MK)/rules.library.mk

ifeq ($(TOOL),diab)
CFLAGS_bzlib.o =  -ei4111
endif
