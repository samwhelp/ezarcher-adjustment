

################################################################################
##
## ~/.bash_profile
##
################################################################################


##
## Load ~/.bashrc
##

[[ -f ~/.bashrc ]] && . ~/.bashrc


##
## Load ~/.fzf-load.bash
##

[[ -f ~/.fzf-load.bash ]] && . ~/.fzf-load.bash


##
## Aad [~/bin] and [~/.local/bin] to PATH
##

PATH="${HOME}/.local/bin:${HOME}/bin:${PATH}"
