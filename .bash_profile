function parse_git_branch () {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

PS1="[\u@\e[0;32m\h\e[m]:\e[0;33m\w\e[m \$(parse_git_branch)$ "

alias ll="ls -l"

