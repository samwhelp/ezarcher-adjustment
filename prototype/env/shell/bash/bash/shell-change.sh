#!/usr/bin/env bash


##
## chsh --help
##
##
## ```
## Usage:
##  chsh [options] [<username>]
##
## Change your login shell.
##
## Options:
##  -s, --shell <shell>  specify login shell
##  -l, --list-shells    print list of shells and exit
##
##  -u, --help           display this help
##  -v, --version        display version
##
## For more details see chsh(1).
## ```
##




##
## chsh -l
##
##
## ```
## /bin/sh
## /bin/bash
## /bin/zsh
## /usr/bin/zsh
## /usr/bin/git-shell
## ```
##




echo 'chsh -s /bin/bash'
chsh -s /bin/bash




##
## sudo chsh -s /bin/bash
##
## ```
## Changing shell for root.
## Shell changed.
## ```
##
