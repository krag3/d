if [ -f ${HOME}/.local/bin/mise ]; then
	eval "$(~/.local/bin/mise activate zsh)"
fi

alias mir='mise run'
alias miu='mise use'