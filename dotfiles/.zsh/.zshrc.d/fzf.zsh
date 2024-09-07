if which fzf >/dev/null 2>&1; then
	typeset -Tgx FZF_DEFAULT_OPTS fzf_default_opts " "
	fzf_default_opts=(
		'--height=90%'
		'--reverse'
		'--border'
		'--inline-info'
		'--margin=0,2'
		'--tiebreak=index'
		'--no-mouse'
		'--filepath-word'
	)

	# bat
	export FZF_CTRL_T_OPTS="
			--preview 'bat -r :100 --color=always --style=header,grid {}'"

	# fd
	export FZF_DEFAULT_COMMAND='fd --type f'
	export FZF_CTRL_T_COMMAND='fd'
	export FZF_ALT_C_COMMAND='fd --type d'

	#ripgrep
	function __fzfrg() {

		rg -n -H . --line-number --no-heading --color=always | \
		fzf --delimiter : \
		--preview "bat -r :100 --color=always {1} --highlight-line {2} " \
		--preview-window=+{2}+3/3 --ansi
	}
	function fzfrg() {
		local res=$(__fzfrg)
		LBUFFER="${LBUFFER}${res%%:*}"
		local ret=$?
		zle reset-prompt
		return ${ret}
	}
	zle -N fzfrg
	bindkey '^y' fzfrg

	# rupa/z
	fzf-z-search() {
			local res=$(z | sort -rn | cut -c 12- | fzf)
			if [ -n "$res" ]; then
					cd "$res"
			else
					return 0
			fi
	}

fi