

################################################################################
##
## ~/.bashrc
##
################################################################################


################################################################################
### Head: check mode
##

##
## If not running interactively, don't do anything
##
[[ $- != *i* ]] && return


##
### Tail: check mode
################################################################################


################################################################################
### Head: alias
##

alias ls='ls --color=auto'


##
### Tail: alias
################################################################################


################################################################################
### Head: prompt
##

PS1='[\u@\h \W]\$ '

##
### Tail: prompt
################################################################################


################################################################################
### Head: fzf
##

##
## https://wiki.archlinux.org/title/fzf
##

##
## Load ~/.fzf-load.bash
##

[[ -f ~/.fzf-load.bash ]] && . ~/.fzf-load.bash


##
### Tail: fzf
################################################################################

