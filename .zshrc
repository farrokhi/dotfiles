## My ZSH config file

if [ -x /usr/libexec/path_helper ]; then
    eval `/usr/libexec/path_helper -s`
fi

export PATH="/opt/homebrew/bin:${HOME}/bin:$PATH"
export ZSH="${HOME}/.oh-my-zsh"

# Load shared variables and aliases if available
[ -f ${HOME}/.sharedrc ] && source ${HOME}/.sharedrc

# A few sane environment settings
export PROMPT="[%n@%m:%~]%# "
export EDITOR="vim"
export VISUAL=$EDITOR
export LANG="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
export PAGER="less -SFX"

# Eyecandy and stuff for lazy people
if [ -d ${ZSH} ]; then
    ZSH_THEME="mh"
    CASE_SENSITIVE="true"
    HYPHEN_INSENSITIVE="true"
    DISABLE_AUTO_UPDATE="true"
    source ${ZSH}/oh-my-zsh.sh
fi

# Useful aliases
alias e="emacs -nw"
alias h="history 25"
alias j="jobs -l"
alias telnet="telnet -K"
alias grep="grep --color"
alias egrep="egrep --color"
alias mc="mc -u"
alias ekill="emacsclient -e \'\(kill-emacs\)\'"
alias ll="ls -Alh"
alias lf="ls -FA"
alias la="ls -A"
alias yl="yamllint -d '{extends: default, rules: {line-length: disable, truthy: disable, braces: disable, comments: disable, brackets: disable}}'"
alias p1="awk '{print \$1}'"
alias p2="awk '{print \$2}'"
alias p3="awk '{print \$3}'"
alias p4="awk '{print \$4}'"
alias p5="awk '{print \$5}'"
alias p6="awk '{print \$6}'"
alias p7="awk '{print \$7}'"
alias p8="awk '{print \$8}'"
alias p9="awk '{print \$9}'"

# Setup gpg-agent to serve as ssh-agent
export GPG_TTY="$(tty)"
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
gpgconf --launch gpg-agent

switch_yubikey () {
    gpg-connect-agent "scd serialno" "learn --force" /bye
}

#if [ -f ${HOME}/bin/ensure-ssh-agent.sh ]; then
#    source ${HOME}/bin/ensure-ssh-agent.sh
#fi

if [ -f ${HOME}/.Xresources ]; then
    xrdb -merge ${HOME}/.Xresources
fi

