set prompt = "[%B%n%b@%B%m%b %~]%# "
set path = (/usr/bin /bin /usr/sbin /sbin /usr/local/bin ~/bin)
setenv EDITOR vim
setenv PAGER most
setenv PREFIX /opt/local

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
alias la	ls -A
alias h		history 25
alias j		jobs -l
alias telnet	telnet -K
alias grep	grep --color
alias egrep	egrep --color
alias mc	mc -u
alias tmux	tmux -2

# Key bindings
bindkey "^W" backward-delete-word
bindkey -k up history-search-backward
bindkey -k down history-search-forward

# Eyecandy and usability
setenv	CLICOLOR
set	rmstar
set	autolist
set	autoexpand
set	color

setenv PATH /opt/local/bin:/opt/local/sbin:$PATH

