## My ZSH config file

if [ -x /usr/libexec/path_helper ]; then
    eval `/usr/libexec/path_helper -s`
fi

export PATH=/usr/local/bin:/usr/local/sbin:$HOME/bin:$PATH
export ZSH="${HOME}/.oh-my-zsh"

#ZSH_THEME="mh"
CASE_SENSITIVE="true"
HYPHEN_INSENSITIVE="true"
DISABLE_AUTO_UPDATE="true"
# DISABLE_AUTO_TITLE="true"
# ENABLE_CORRECTION="true"
# COMPLETION_WAITING_DOTS="true"

plugins=(
  git
  pip
)

source $ZSH/oh-my-zsh.sh

alias h="history 25"
alias j="jobs -l"
alias telnet="telnet -K"
alias grep="grep --color"
alias egrep="egrep --color"
alias mc="mc -u"
alias ll="ls -alh"

if [ -r ${HOME}/kebab.zsh-theme ]; then
    source ${HOME}/kebab.zsh-theme
else
    export PROMPT="[%n@%m:%~]%# "
fi

