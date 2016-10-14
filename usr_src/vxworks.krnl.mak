#  vxworks.krnl.mak - for bzip2
#
# Copyright 2016, Wind River Systems, Inc.
#
# This file is released under the terms of the bzip2-1.0.6 license. 
# A copy of the license can be found  at www.spdx.org/licenses.
#
#  modification history
#  --------------------
#  02jun16,brk  written
#

LIB_BASE_NAME   = bz2

OBJS= blocksort.o  \
      huffman.o    \
      crctable.o   \
      randtable.o  \
      compress.o   \
      decompress.o \
      bzlib.o

include $(WIND_KRNL_MK)/rules.library.mk

# suppress expected warnings in 3rd party code 
ifeq ($(TOOL),diab)
CFLAGS_bzlib.o =  -ei4111
endif
ifeq ($(TOOL),gnu)
ADDED_CFLAGS =  -Wno-conversion
endif

