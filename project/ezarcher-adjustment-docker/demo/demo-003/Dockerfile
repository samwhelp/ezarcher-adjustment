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

RUN pacman -S bash wget curl git base-devel archiso --noconfirm


##
## ## Create User
##


ARG user

ENV THE_USER ${user:-live}


ARG uid

ENV THE_UID ${uid:-1000}


ARG gid

ENV THE_GID ${gid:-1000}


ARG shell

ENV THE_SHELL ${shell:-/bin/sh}


##
## https://wiki.archlinux.org/title/Users_and_groups#User_management
##

RUN groupadd -g ${THE_GID} ${THE_USER}

RUN useradd -m -u ${THE_UID} -g ${THE_USER} -s ${THE_SHELL} ${THE_USER}; echo "${THE_USER}:live" | chpasswd > /dev/null 2>&1


COPY asset/sudoers /etc/sudoers


##
## ## Build Script
##


RUN mkdir -p /opt/iso-build

Run chown 1000:1000 /opt/iso-build

COPY asset/iso-build.sh /opt/iso-build/iso-build.sh

RUN chmod 755 /opt/iso-build/iso-build.sh


##
## ## Start Build
##

ENTRYPOINT ["/opt/iso-build/iso-build.sh"]
