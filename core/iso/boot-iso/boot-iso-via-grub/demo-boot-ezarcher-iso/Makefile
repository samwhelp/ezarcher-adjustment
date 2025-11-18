

THE_MAKEFILE_FILE_PATH := $(abspath $(lastword $(MAKEFILE_LIST)))
THE_BASE_DIR_PATH := $(abspath $(dir $(THE_MAKEFILE_FILE_PATH)))
THE_PLAN_DIR_PATH := $(THE_BASE_DIR_PATH)
THE_BIN_DIR_PATH := $(THE_BASE_DIR_PATH)/bin
THE_MAK_DIR_PATH := $(THE_BASE_DIR_PATH)/mak
THE_ASSET_DIR_PATH := $(THE_PLAN_DIR_PATH)/asset
THE_OVERLAY_DIR_PATH := $(THE_ASSET_DIR_PATH)/overlay
THE_DEFAULT_DIR_PATH := $(THE_ASSET_DIR_PATH)/default

PATH := $(THE_BIN_DIR_PATH):$(PATH)




default: help
.PHONY: default

help:
	@echo 'Usage:'
	@echo '	$$ make [action]'
	@echo
	@echo 'Example:'
	@echo '	$$ make'
	@echo '	$$ make help'
	@echo
	@echo '	$$ make prepare'
	@echo
	@echo '	$$ make iso-download'
	@echo
	@echo '	$$ make update-grub'
	@echo
	@echo '	$$ make config-40_custom'
	@echo
	@echo '	$$ make config-41_custom'
	@echo
	@echo '	$$ make view-40_custom'
	@echo
	@echo '	$$ make view-41_custom'
	@echo
	@echo '	$$ make view-grub.cfg'
	@echo
	@echo '	$$ make edit-40_custom'
	@echo
	@echo '	$$ make edit-41_custom'
	@echo
	@echo '	$$ make remove-40_custom'
	@echo
	@echo '	$$ make remove-41_custom'
	@echo

.PHONY: help


prepare:
	sudo pacman -Syu wget
.PHONY: prepare


iso-download:
	$(THE_PLAN_DIR_PATH)/iso-download.sh
.PHONY: iso-download


update-grub:
	sudo grub2-mkconfig -o /boot/grub2/grub.cfg
.PHONY: update-grub


config-40_custom:
	sudo install -Dm755 $(THE_OVERLAY_DIR_PATH)/etc/grub.d/40_custom "/etc/grub.d/40_custom"
	sudo grub2-mkconfig -o /boot/grub2/grub.cfg
.PHONY: config-40_custom


config-41_custom:
	sudo install -Dm644 $(THE_OVERLAY_DIR_PATH)/boot/grub2/custom.cfg "/boot/grub2/custom.cfg"
.PHONY: config-41_custom


view-40_custom:
	less "/etc/grub.d/40_custom"
.PHONY: view-40_custom


view-41_custom:
	less "/boot/grub2/custom.cfg"
.PHONY: view-41_custom


view-grub.cfg:
	sudo less "/boot/grub2/grub.cfg"
.PHONY: view-grub.cfg


edit-40_custom:
	sudo vi "/etc/grub.d/40_custom"
.PHONY: edit-40_custom


edit-41_custom:
	sudo vi "/boot/grub2/custom.cfg"
.PHONY: edit-41_custom


remove-40_custom:
	sudo install -Dm755 $(THE_DEFAULT_DIR_PATH)/etc/grub.d/40_custom "/etc/grub.d/40_custom"
	sudo grub2-mkconfig -o /boot/grub2/grub.cfg
.PHONY: remove-40_custom


remove-41_custom:
	sudo rm -f "/boot/grub2/custom.cfg"
.PHONY: remove-41_custom







##
## ## include
##

#include $(THE_MAK_DIR_PATH)/*.mk
