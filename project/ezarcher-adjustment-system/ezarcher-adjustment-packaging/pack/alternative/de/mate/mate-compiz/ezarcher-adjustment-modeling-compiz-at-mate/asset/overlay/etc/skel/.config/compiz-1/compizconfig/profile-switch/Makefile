THE_MAKEFILE_FILE_PATH := $(abspath $(lastword $(MAKEFILE_LIST)))
THE_BASE_DIR_PATH := $(abspath $(dir $(THE_MAKEFILE_FILE_PATH)))
THE_BIN_DIR_PATH := $(THE_BASE_DIR_PATH)/bin
THE_MAK_DIR_PATH := $(THE_BASE_DIR_PATH)/mak
THE_PROFILE_DIR_PATH := $(THE_BASE_DIR_PATH)/config
THE_COMPIZ_PROFILE_FILE_PATH := ~/.config/compiz-1/compizconfig/Default.ini


PATH := $(THE_BIN_DIR_PATH):$(PATH)


default: help
.PHONY: default


include $(THE_MAK_DIR_PATH)/*.mk
