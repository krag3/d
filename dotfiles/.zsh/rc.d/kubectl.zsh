
[[ $commands[kubectl] ]] && source <(kubectl completion zsh)

export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

alias ktl-g='kubectl get all -owide'
alias ktl-ga='kubectl get all -A -owide'
alias ktl-w='watch kubectl get all -owide'
alias ktl-wa='watch kubectl get all -A -owide'
alias ktl-rr='kubectl rollout restart'

alias ktl-ceph='kubectl -n ceph exec -it $(kubectl -n ceph get pod -l app=rook-ceph-tools -o jsonpath="{.items[0].metadata.name}") -- bash'
