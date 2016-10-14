#  vxworks.mak - for bzip2
#
# Copyright 2013,2016 Wind River Systems, Inc.
#
# This file is released under the terms of the bzip2-1.0.6 license. 
# A copy of the license can be found  at www.spdx.org/licenses.
#
# modification history
# -------------------- 
# 06oct16,brk  licensed
# 30nov12,brk  written
#


RTP_BASE_DIR = bzip2

EXE= $(VXE).vxe

OBJS = $(VXE).o

ADDED_LIBS = -lbz2 

include $(WIND_USR_MK)/rules.rtp.mk

# suppress expected warnings in 3rd party code 
ifeq ($(TOOL),gnu)
CFLAGS_bzip2.o =  -Wno-unused-but-set-variable
endif
