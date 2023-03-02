################################################################################
### Head: Info
##

##
## NAME             : ezarcher-adjustment/archiso-builder
## TO_BUILD         : `docker build --rm -t ezarcher-adjustment/archiso-builder:latest .`
## TO_RUN           : `docker run --rm -v /tmp:/tmp -t -i --privileged ezarcher-adjustment/archiso-builder:latest`
## Source           : https://github.com/samwhelp/ezarcher-adjustment
##

##
### Tail: Info
################################################################################


##
## ## Base
##
## https://hub.docker.com/_/archlinux
##

FROM library/archlinux:latest


##
## ## Sync Packages Database
##

RUN pacman -Sy


##
## ## Install Package
##
## * https://archlinux.org/packages/core/any/base-devel/
## * https://archlinux.org/packages/extra/x86_64/git/
## * https://archlinux.org/packages/extra/any/archiso/
## * https://wiki.archlinux.org/title/archiso
##

RUN pacman -S wget curl git base-devel archiso --noconfirm


##
## ## Build Script
##

COPY asset/iso-build.sh root/

RUN ["chmod", "755", "root/iso-build.sh"]


##
## ## Start Build
##

ENTRYPOINT ["./root/iso-build.sh"]
