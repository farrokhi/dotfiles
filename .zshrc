## My ZSH config file

if [ -x /usr/libexec/path_helper ]; then
    eval `/usr/libexec/path_helper -s`
fi

export PATH=/usr/local/bin:/usr/local/sbin:$HOME/bin:$PATH
export ZSH="${HOME}/.oh-my-zsh"

# Load shared variables and aliases if available
[ -f ${HOME}/.sharedrc ] && source ${HOME}/.sharedrc

# A few sane environment settings
export PROMPT="[%n@%m:%~]%# "
export EDITOR="vim"
export LANG=en_US.UTF-8
export PAGER="less -SFX"

# Eyecandy and stuff for lazy people
if [ -d $ZSH ]; then
    # Theme settings
    ZSH_THEME="agkozak"
    AGKOZAK_MULTILINE=0

    CASE_SENSITIVE="true"
    HYPHEN_INSENSITIVE="true"
    DISABLE_AUTO_UPDATE="true"

    plugins=(
        git
        tig
        pip
    )

    source $ZSH/oh-my-zsh.sh
fi

# Useful aliases
alias h="history 25"
alias j="jobs -l"
alias telnet="telnet -K"
alias grep="grep --color"
alias egrep="egrep --color"
alias mc="mc -u"
alias ll="ls -Alhs"
alias lf="ls -FA"
alias la="ls -A"
alias yl="yamllint -d '{extends: default, rules: {line-length: disable, truthy: disable, braces: disable, brackets: disable}}'"

[ -f ${HOME}/bin/ensure-ssh-agent.sh ] && source ${HOME}/bin/ensure-ssh-agent.sh
[ -f ${HOME}/.Xresources ] && xrdb -merge ~/.Xresources
