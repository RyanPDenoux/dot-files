test -s ~/.alias && source ~/.alias || true
test -s ~/.env && source ~/.env || true

# Colors
source ~/.mintty-colors-solarized/mintty-solarized-dark.sh
eval `dircolors -b ~/.dir_colors | sed 's/>&\/dev\/null$//'`

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
