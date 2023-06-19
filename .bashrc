# interactive session or not
[ -z "$PS1" ] && return

# TERM is only set outside of tmux
[ -z "$TMUX" ] && export TERM=xterm-256color

# alias
if [ -f ~/.aliases ]; then
	source ~/.aliases
fi

# bind
bind '"\C-o":"lfcd\C-m"'

# editor
export EDITOR=nvim
export VISUAL=nvim

# functions
mcd () { mkdir -p "$1" && cd "$1"; }
function shenv () {
	declare -p |
		awk '{print $3}'
}

function showme () {
	cal
	echo "OS:"
	uname -a
	echo -e "\nUptime:"
	uptime
	echo -e "\nMemory:"
	free
	echo -e "\nWAN IP :"
	curl -s icanhazip.com
}

lfcd () {
  tmp="$(mktemp)"
  lf -last-dir-path="$tmp" "$@"
  if [ -f "$tmp" ]; then
    dir="$(cat "$tmp")"
    rm -f "$tmp"
    if [ -d "$dir" ]; then
      if [ "$dir" != "$(pwd)" ]; then
        cd "$dir"
      fi
    fi
  fi
}

# history
HISTCONTROL=ignoreboth #short for ignorespace:ignoredups
shopt -s histappend
HISTSIZE=1000
HISTFILESIZE=2000
HISTIGNORE="exit:clear"

# PS1
function setPrompt() {
	let error_code=$?
	fgrndGr='\e[00;32m'
	fgrndBr='\e[00;33m'
	fgrndPu='\e[00;35m'
	endC='\e[m'
	PS1="${fgrndGr}\u${endC}@${fgrndPu}\h${endC}:${fgrndBr}\w${endC}\n\$ " #- ${error_code} -
}

PROMPT_COMMAND=setPrompt

# ?
. "$HOME/.cargo/env"

# lf
LFCD="/home/simon/.config/lf/lfcd.sh"
if [ -f "$LFCD" ]; then
      source "$LFCD"
fi

