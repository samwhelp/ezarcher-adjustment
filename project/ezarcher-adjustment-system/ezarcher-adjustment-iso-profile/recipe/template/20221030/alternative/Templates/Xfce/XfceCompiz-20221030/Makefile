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
	@echo '	$$ make clean'
	@echo

.PHONY: help


prepare:
#	sudo pacman -Sy --needed base-devel archiso
	sudo pacman -Sy --needed archiso
.PHONY: prepare


build:
	./build.sh
.PHONY: build


clean:
	sudo rm -rf work out
.PHONY: clean
