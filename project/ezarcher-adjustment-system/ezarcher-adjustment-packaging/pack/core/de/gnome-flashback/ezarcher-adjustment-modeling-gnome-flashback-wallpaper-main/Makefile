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
	@echo '	$$ make build'
	@echo
	@echo '	$$ make install'
	@echo

.PHONY: help


prepare:
	sudo pacman -Sy --needed base-devel
.PHONY: prepare


build:
	./build.sh
.PHONY: build


install:
	sudo pacman -U --needed package/*.zst
.PHONY: install


reinstall:
	sudo pacman -U package/*.zst
.PHONY: reinstall


uninstall:
	sudo pacman -R ezarcher-adjustment-modeling-gnome-flashback-wallpaper-main
.PHONY: uninstall

clean:
	rm -f *.zst
	rm -rf pkg
	rm -rf src
	rm -rf package
.PHONY: clean


list:
	pacman -Ql ezarcher-adjustment-modeling-gnome-flashback-wallpaper-main -q
.PHONY: list

info:
	pacman -Qi ezarcher-adjustment-modeling-gnome-flashback-wallpaper-main
.PHONY: info
