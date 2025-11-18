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
	@echo '	$$ make manjaro-prepare'
	@echo
	@echo '	$$ make ubuntu-prepare'
	@echo
	@echo '	$$ make rc'
	@echo
	@echo '	$$ make view'
	@echo
	@echo '	$$ make install'
	@echo
	@echo '	$$ make test'
	@echo
	@echo '	$$ make sync'
	@echo

.PHONY: help


manjaro-prepare:
	pamac install php
.PHONY: prepare-manjaro


ubuntu-prepare:
	sudo apt-get install php-cli
.PHONY: prepare-ubuntu


rc:
	php config.php > config
.PHONY: rc


view:
	cat config | less
.PHONY: view


install: rc
	install -Dm644 config ~/.config/sway/config
.PHONY: install


test:
	echo "Todo: test"
.PHONY: test


sync: rc
	install -Dm644 config ../../../config
.PHONY: sync
