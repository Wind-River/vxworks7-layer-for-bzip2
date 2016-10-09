# Makefile for bzip2 apps
#
# Copyright (c) 2013,2016 Wind River Systems, Inc.
#
#  This file is released under the terms of the license contained
#  in the accompanying file  LICENSE_NOTICES.txt
#
# modification history
# -------------------- 
# 06oct16,brk  licensed
#
include $(WIND_KRNL_MK)/defs.ver.mk

PKG_URL= http://www.bzip.org/$(PKG_VER)/bzip2-$(PKG_VER).tar.gz

PKG_BUILD_DIR= bzip2-$(PKG_VER)

PKG_FILE_TYPE = unpack

USER_PUBLIC_H_FILES   := bzlib.h
KERNEL_PUBLIC_H_FILES := bzlib.h

include $(WIND_KRNL_MK)/defs.unix.ports.mk

ifeq "$(BUILDSTAGE)" "POSTBUILD"
PKG_BUILD_TARGETS := bzip2 bzip2recover
else
PKG_BUILD_TARGETS := libbz2
endif 


include $(WIND_KRNL_MK)/rules.unix.ports.mk


