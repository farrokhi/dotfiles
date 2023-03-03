set prompt = "[%~]%# "

# For some reason, 'setenv PATH' does not work if you have
# something from your home directory in the path. Therefore
# you should use 'set path'.

set path = (/usr/bin /bin /usr/sbin /sbin /usr/local/bin ~/bin ~/go/bin $path)

eval `/usr/libexec/path_helper -c`
setenv PATH "/opt/homebrew/bin:/opt/homebrew/sbin:$PATH"
setenv PATH "/usr/local/bin:/usr/local/sbin:$PATH"

setenv ALTERNATE_EDITOR ''
setenv EDITOR 'emacsclient -t'
setenv VISUAL 'emacsclient -c -a emacs'
setenv PAGER  'less -SRFX'

# directories
complete cd 'C/*/d/'
complete rmdir 'C/*/d/'

# groups
complete chgrp 'p/1/g/'

# users
complete chown 'p/1/u/'

# dict (sdcv) settings
setenv SDCV_PAGER "${PAGER}"

# Aliases
alias b         bat -p --theme "base16"
alias d         sdcv -2 ~/dict/ -0c
alias e         ${EDITOR}
alias h         history 25
alias j         jobs -l
alias p         ${PAGER}

alias ll        ls -lAh
alias lf        ls -FA
alias la        ls -A
alias telnet    telnet -K
alias grep      grep --color
alias egrep     egrep --color
alias mc        mc -u
alias diff      colordiff
alias mu4e      emacs -nw --eval \'\(mu4e\)\'
alias magit     emacs -nw --eval \'\(magit\)\'

# Key bindings
bindkey "^W" backward-delete-word
bindkey -k up history-search-backward
bindkey -k down history-search-forward
bindkey "\e[3~" delete-char

# Locale
setenv LANG     en_US.UTF-8
setenv LC_ALL   en_US.UTF-8
setenv LC_CTYPE en_US.UTF-8

# Eyecandy and usability
setenv CLICOLOR
set history = 5000
set savehist = (${history} merge)
set rmstar
set autolist
set autoexpand
set color

# GPG
setenv GPG_TTY `tty`
setenv SSH_AUTH_SOCK `gpgconf --list-dirs agent-ssh-socket `
gpgconf --launch gpg-agent

source ~/.complete
