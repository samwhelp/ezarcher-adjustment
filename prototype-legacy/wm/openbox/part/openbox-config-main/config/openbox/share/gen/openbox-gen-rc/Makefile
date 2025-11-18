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


prepare:
	sudo apt-get install php-cli
.PHONY: prepare


rc:
	php rc.php > rc.xml
.PHONY: rc


view:
	cat rc.xml
.PHONY: view


install: rc
	install -Dm644 rc.xml ~/.config/openbox/rc.xml
.PHONY: install


test:
	openboxrc-ctrl xephyr
.PHONY: test


sync: rc
	install -Dm644 rc.xml ../../../rc.xml
#	install -Dm644 rc.xml ../../../../lxqt-with-openbox/config/openbox/lxqt-rc.xml
#	sed -i 's/<bottom>48<\/bottom>/<bottom>5<\/bottom>/g' ../../../../lxqt-with-openbox/config/openbox/lxqt-rc.xml
.PHONY: sync


# demo:
# 	@./demo.sh
# .PHONY: demo
