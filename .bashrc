test -s ~/.alias && source ~/.alias || true
test -s ~/.env && source ~/.env || true

HOUR=$(date +%H)


day () {
  source ~/.mintty-colors-solarized/mintty-solarized-light.sh
  eval $( dircolors -b ~/.dir_colors/dircolors.ansi-light )
}


night () {
  source ~/.mintty-colors-solarized/mintty-solarized-dark.sh
  eval $( dircolors -b ~/.dir_colors/dircolors.ansi-dark )
}


parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}


# Path additions
export PATH=/mnt/c/Windows/System32:$PATH

# Colors
if [ "$HOUR" -gt 6 -a "$HOUR" -lt 18 ]; then
  day
else
  night
fi

# Bash History
shopt -s histappend
shopt -s cmdhist
HISTFILESIZE=100000000
HISTSIZE=10000000

mkdir -p ~/.logs
export PROMPT_COMMAND=$(cat <<- 'STR'
if [[ "$(id -u)" -ne 0 ]]; then
  history -a
  echo "$(date "+%Y-%m-%d.%H:%M:%S") $(pwd) $(history 1)" \
    >> ~/.logs/bash-history-$(date "+%Y-%m-%d").log;

fi
STR
)

# Bash Completion
[[ $PS1 && -f /usr/share/bash-completion/bash_completion ]] && \
  source /usr/share/bash-completion/bash_completion

# Prompt
PS1="[\[$(tput bold)\]\t\[$(tput sgr0)\]] "
PS1+="\[$(tput sgr0)\]\[\033[32m\]\u"
PS1+="\[$(tput sgr0)\]\[\033[39m\]@"
PS1+="\[$(tput sgr0)\]\[\033[33m\]\H"
PS1+="\[$(tput sgr0)\]\[\033[39m\]: "
PS1+="\[$(tput sgr0)\]\[\033[36m\]\W"
PS1+="\[$(tput sgr0)\]\[\033[39m\]\$(parse_git_branch)"
PS1+="\[$(tput sgr0)\]\[\033[37m\]\n"
PS1+="\[$(tput sgr0)\]\[\033[31m\]\\$ \[$(tput sgr0)\]"

export PS1
