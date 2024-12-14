
[[ $commands[kubectl] ]] && source <(kubectl completion zsh)

export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

alias ktl-g='kubectl get all -owide'
alias ktl-ga='kubectl get all -A -owide'
alias ktl-w='watch kubectl get all -owide'
alias ktl-wa='watch kubectl get all -A -owide'
alias ktl-rr='kubectl rollout restart'

