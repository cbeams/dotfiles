if [ -f /usr/local/etc/bash_completion ]; then
    . /usr/local/etc/bash_completion
fi

export PS1='\w$(__git_ps1 "[\[[1;32m\]%s[0m\]]")
$ '

alias ls='gls --color=auto'
alias git=hub
alias gradle=gw
