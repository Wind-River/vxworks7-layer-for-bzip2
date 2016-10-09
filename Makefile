# Makefile -  Makefile for a VSB Layer
#
# Copyright (c) 2013,2016 Wind River Systems, Inc.
#
#  This file is released under the terms of the license contained
#  in the accompanying file  LICENSE_NOTICES.txt
#
# modification history
# -------------------- 
# 06oct16,brk  licensed
# 06may13,brk  create

PRE_BUILD_DIRS = usr_src

BUILD_DIRS = usr_src

BUILD_USER_DIRS  = usr_src

POSTBUILD_RTP_DIRS = usr_src


include $(WIND_KRNL_MK)/rules.layers.mk

