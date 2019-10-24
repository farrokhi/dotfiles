## My ZSH config file

if [ -x /usr/libexec/path_helper ]; then
    eval `/usr/libexec/path_helper -s`
fi

export PATH=/usr/local/bin:/usr/local/sbin:$HOME/bin:$PATH
export ZSH="${HOME}/.oh-my-zsh"

# A few sane environment settings
export PROMPT="[%n@%m:%~]%# "
export EDITOR="vim"
export LANG=en_US.UTF-8
export PAGER="less -FX"

# Theme settings
ZSH_THEME="agkozak"
AGKOZAK_MULTILINE=0

CASE_SENSITIVE="true"
HYPHEN_INSENSITIVE="true"
DISABLE_AUTO_UPDATE="true"

plugins=(
  git
  pip
)

# Eyecandy and stuff for lazy people
source $ZSH/oh-my-zsh.sh

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

# Ensure ssh-agent is running and we have valid settings in all sessions
if [ -f ${HOME}/bin/ensure-ssh-agent.sh ]; then
    source ${HOME}/bin/ensure-ssh-agent.sh
fi
