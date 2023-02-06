set prompt = "[%B%n%b@%B%m%b %~]%# "
set path = (/usr/bin /bin /usr/sbin /sbin /usr/local/bin ~/bin ~/go/bin)
setenv EDITOR vim
setenv PAGER most

# directories
complete cd 'C/*/d/'
complete rmdir 'C/*/d/'

# groups
complete chgrp 'p/1/g/'

# users
complete chown 'p/1/u/'

# Aliases
alias ll        ls -lAh
alias lf        ls -FA
alias la        ls -A
alias h         history 25
alias j         jobs -l
alias telnet    telnet -K
alias grep      grep --color
alias egrep     egrep --color
alias mc        mc -u
alias diff      colordiff

# Key bindings
bindkey "^W" backward-delete-word
bindkey -k up history-search-backward
bindkey -k down history-search-forward
bindkey "\e[3~" delete-char

# Locale
setenv LANG    en_US.UTF-8
setenv LC_ALL  en_US.UTF-8
setenv LC_TYPE en_US.UTF-8

# Eyecandy and usability
setenv CLICOLOR
set rmstar
set autolist
set autoexpand
set color

# GPG
setenv GPG_TTY `tty`
setenv SSH_AUTH_SOCK `gpgconf --list-dirs agent-ssh-socket `
gpgconf --launch gpg-agent


source ~/.complete
eval `/usr/libexec/path_helper -c`
setenv PATH "/usr/local/bin:/usr/local/sbin:$PATH"

set history = 1000
set savehist=(1000 merge)
