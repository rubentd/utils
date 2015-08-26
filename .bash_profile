function parse_git_branch () {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

PS1="\[\e[0;32m\u\e[m\[@\[\e[0;32m\[\h\e[m\[:\[\e[0;33m\w\e[m\[ \[\e[0;36m\$(parse_git_branch)\e[m\[$ "

alias ll="ls -lG"
alias dm-env="eval \"\$(docker-machine env dev)\""
alias dc="docker-compose"
alias dm="docker-machine"

