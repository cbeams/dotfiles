# Source brew-managed bash completion scripts
if [ -f /usr/local/etc/bash_completion ]; then
    . /usr/local/etc/bash_completion
fi

# Configure Bash prompt style
export PS1='[0m\]\h:\w$(__git_ps1 "[\[[32m\]%s[0m\]]")
$ '

# Colorize ls output
alias ls='gls --color=auto'
export LS_COLORS='no=00:fi=00:di=36:ln=33:pi=40;36:so=35:bd=40;36;01:cd=40;36;01:or=05;37;41:mi=05;37;41:ex=32:*.cmd=32:*.exe=32:*.com=32:*.btm=32:*.bat=32:*.tar=31:*.tgz=31:*.tbz2=31:*.arc=31:*.arj=31:*.taz=31:*.lzh=31:*.lha=31:*.zip=31:*.z=31:*.Z=31:*.gz=31:*.bz2=31:*.bz=31:*.tz=31:*.rpm=31:*.jpg=35:*.jpeg=35:*.gif=35:*.bmp=35:*.xbm=35:*.xpm=35:*.png=35:*.tif=35:*.tiff=35:'

alias gradle=gw
