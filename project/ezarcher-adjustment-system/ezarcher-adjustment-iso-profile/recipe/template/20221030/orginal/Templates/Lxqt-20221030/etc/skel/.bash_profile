
##
## ~/.bash_profile
##


##
## Load ~/.bashrc
##

[[ -f ~/.bashrc ]] && . ~/.bashrc


##
## Aad [~/bin] and [~/.local/bin] to PATH
##

PATH="${HOME}/.local/bin:${HOME}/bin:$PATH"
