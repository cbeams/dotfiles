if [ -f /usr/local/etc/bash_completion ]; then
    . /usr/local/etc/bash_completion
fi

export PS1='[0m\]\h:\w$(__git_ps1 "[\[[32m\]%s[0m\]]")
$ '

alias ls='gls --color=auto'
alias git=hub
alias gradle=gw
