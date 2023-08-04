

################################################################################
##
## ~/.bash_profile
##
################################################################################


################################################################################
### Head: bashrc
##

##
## Load ~/.bashrc
##

[[ -f ~/.bashrc ]] && . ~/.bashrc

##
### Tail: bashrc
################################################################################


################################################################################
### Head: Path
##

##
## Aad [~/bin] and [~/.local/bin] to PATH
##

#PATH="${HOME}/.local/bin:${HOME}/bin:${PATH}"

[[ -f ~/.path ]] && . ~/.path

##
### Tail: Path
################################################################################


