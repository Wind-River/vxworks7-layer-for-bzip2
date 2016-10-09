#  vxworks.mak - for bzip2
#
# Copyright 2013,2016 Wind River Systems, Inc.
#
#  This file is released under the terms of the license contained
#  in the accompanying file LICENSE_NOTICES.txt
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

ifeq ($(TOOL),gnu)
CFLAGS_bzip2.o =  -Wno-unused-but-set-variable
endif
