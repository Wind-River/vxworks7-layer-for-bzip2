#  vxworks.krnl.mak - for bzip2
#
# Copyright 2016, Wind River Systems, Inc.
#
#  This file is released under the terms of the license contained
#  in the accompanying file  LICENSE_NOTICES.txt
#
#  modification history
#  --------------------
#  02jun16,brk  written
#
include $(WIND_KRNL_MK)/defs.unix.friend.mk

LIB_BASE_NAME   = bz2

OBJS= blocksort.o  \
      huffman.o    \
      crctable.o   \
      randtable.o  \
      compress.o   \
      decompress.o \
      bzlib.o

include $(WIND_KRNL_MK)/rules.library.mk

ifeq ($(TOOL),diab)
CFLAGS_bzlib.o =  -ei4111
endif
