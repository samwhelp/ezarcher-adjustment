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
	@echo '	$$ make download'
	@echo
	@echo '	$$ make extract'
	@echo
	@echo '	$$ make clean'
	@echo

.PHONY: help


prepare:
#	sudo pacman -Sy --needed base-devel archiso
	sudo pacman -Sy --needed archiso wget
.PHONY: prepare


download:
	./download.sh
.PHONY: download


extract:
	./extract.sh
.PHONY: extract


clean:
	sudo rm -rf tmp
.PHONY: clean
