test -s ~/.alias && source ~/.alias || true
test -s ~/.env && source ~/.env || true

# Colors
hour=$(date +%H)
if [ "$hour" -gt 6 -a "$hour" -lt 18 ]; then
  source ~/.mintty-colors-solarized/mintty-solarized-light.sh
else
  source ~/.mintty-colors-solarized/mintty-solarized-dark.sh
fi
eval `dircolors -b ~/.dir_colors | sed 's/>&\/dev\/null$//'`

# Bash Completion
[[ $PS1 && -f /usr/share/bash-completion/bash_completion ]] && \
  source /usr/share/bash-completion/bash_completion

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Prompt
PS1="\t "
PS1+="\[$(tput sgr0)\]\[\033[32m\]\u"
PS1+="\[$(tput sgr0)\]\[\033[39m\]@"
PS1+="\[$(tput sgr0)\]\[\033[33m\]\H"
PS1+="\[$(tput sgr0)\]\[\033[39m\]:"
PS1+="\[$(tput sgr0)\]\[\033[36m\]\w"
PS1+="\[$(tput sgr0)\]\[\033[39m\]\$(parse_git_branch)"
PS1+="\[$(tput sgr0)\]\[\033[37m\]\n"
PS1+="\[$(tput sgr0)\]\[\033[31m\]\\$ \[$(tput sgr0)\]"

export PS1
