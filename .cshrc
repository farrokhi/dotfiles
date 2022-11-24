set prompt = "[%B%n%b@%B%m%b %~]%# "
set path = (/usr/bin /bin /usr/sbin /sbin /usr/local/bin ~/bin)

setenv EDITOR   "emacs -nw"
setenv PAGER    "less -SFX"

setenv LC_ALL   en_US.UTF-8
setenv LANG     en_US.UTF-8
setenv LC_CTYPE en_US.UTF-8

# directories
complete cd 'C/*/d/'
complete rmdir 'C/*/d/'

# groups
complete chgrp 'p/1/g/'

# users
complete chown 'p/1/u/'

# Aliases
alias ll	ls -lAh
alias lf	ls -FA
alias la        ls -A
alias h         history 25
alias j         jobs -l
alias telnet    telnet -K
alias grep	grep --color
alias egrep	egrep --color
alias mc	mc -u
alias diff      colordiff
alias yl        yamllint -d '{extends: default, rules: {line-length: disable, truthy: disable, braces: disable, comments: disable, brackets: disable}}'


# Key bindings
bindkey "^W" backward-delete-word
bindkey -k up history-search-backward
bindkey -k down history-search-forward
bindkey "\e[3~" delete-char

# Eyecandy and usability
setenv CLICOLOR
set rmstar
set autolist
set autoexpand
set color

source ~/.complete
setenv PATH "/usr/local/bin:/usr/local/sbin:$PATH"
