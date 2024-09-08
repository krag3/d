
setopt extended_glob

setopt auto_cd
setopt auto_pushd
setopt pushd_ignore_dups

export HISTFILE=${HOME}/.zsh_history
export HISTSIZE=100000
export SAVEHIST=100000

export PATH="$HOME/.local/bin:$PATH"

setopt hist_ignore_dups
setopt EXTENDED_HISTORY
setopt share_history
setopt extended_history
setopt hist_reduce_blanks
setopt IGNOREEOF

stty stop undef

autoload -Uz compinit
compinit

if [[ $TERM == xterm ]]; then TERM=xterm-256color; fi

### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit


#### Plugins

zinit ice pick"async.zsh" src"pure.zsh"
zinit light sindresorhus/pure
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-completions
zinit light zdharma/history-search-multi-word

####


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


for file in ${HOME}/.zsh/rc.d/*.zsh; do
  [ -f $file ] && . $file
done
