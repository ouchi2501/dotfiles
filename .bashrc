#
# grep -----------------------------------------------------------
#
# GREP_COLORは、検索ワードを色づけするために使用。
# 色づけすると、視認性が格段にあがる。
# -Eオプションは、拡張正規表現を使用する場合に指定
#
export GREP_COLOR='1;37;41'
alias grep='grep -E --color=auto'

alias ll='ls -lG'
alias lll='ls -tlrG'

#
# man ------------------------------------------------------------
# jmanで日本語化
#
alias man='env LANG=ja_JP.UTF-8 /usr/local/bin/jman'

source /usr/local/etc/bash_completion.d/git-prompt.sh
source /usr/local/etc/bash_completion.d/git-completion.bash

GIT_PS1_SHOWDIRTYSTATE=true
export PS1='\h\[\033[00m\]:\W\[\033[31m\]$(__git_ps1 [%s])\[\033[00m\]\$ '


### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

export PATH=$PATH:~/.composer/vendor/bin

### Golang path
export PATH=$PATH:/opt/go/bin

### GoPath
export GOPATH=$HOME/GoProject/
alias ipython='ipython --pylab'
alias ipython='ipython --pylab'

### macVim
alias vi='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'
alias vim='env_LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'
