setopt no_global_rcs
export LANG=ja_JP.UTF-8
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# no beep sound
setopt no_beep
setopt nolistbeep

# CUI Color setting
export CLICOLOR=1
export LSCOLORS=DxGxcxdxCxegedabagacad

# Alias Setting
alias o='open'
alias ls='gls -alv --color=auto'
alias rm='rm -ir'

# Shortcut Alias
alias cdvm='cd ~/Documents/VM/' >> .bashrce
#alias cdsls='cd ~/Documents/VM/serverless' >> .bashrce
#alias cdfr='cd ~/Documents/VM/frame.localsite/' >> .bashrce


## 重複パスを登録しない
typeset -U path cdpath fpath manpath

setopt AUTO_CD
cdpath=(.. ~ ~/Documents/Dropbox/docs/template)
cdpath=(.. ~ ~/local/lib/node_modules/typescript)
cdpath=(.. ~ ~/local/lib/node_modules/coffee-script)
cdpath=(.. ~ ~/Documents/Dropbox/docs/workspace)

## pathを設定
export PATH="/sbin:$PATH"

# for shell scripts / scripts
export PATH=~/Documents/shell-scripts:$PATH
export PATH=~/Documents/scripts:$PATH
export PATH=~/Documents/shell-scripts/cd:$PATH
export PATH=~/Documents/shell-scripts/tmuxinator:$PATH


# for zsh-completions
fpath=(/path/to/homebrew/share/zsh-completions $fpath)

autoload -U compinit
compinit -u

# for Homebrew
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH

# for anyenv
eval "$(anyenv init -)"

# for phpenv
export PATH="$HOME/.phpenv/bin:$PATH"
eval "$(phpenv init -)"

# for pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

 #for tmux
export TERM=xterm-256color

export EDITOR=/usr/bin/vim

if [ -f /Applications/MacVim.app/Contents/MacOS/Vim ]; then
    export EDITOR=/Applications/MacVim.app/Contents/MacOS/Vim
fi

export SHELL=/usr/local/bin/zsh
export PATH="/usr/local/opt/openssl/bin:$PATH"

# heroku autocomplete setup
HEROKU_AC_ZSH_SETUP_PATH=~/Library/Caches/heroku/autocomplete/zsh_setup && test -f $HEROKU_AC_ZSH_SETUP_PATH && source $HEROKU_AC_ZSH_SETUP_PATH;

# for Android Debug
export PATH=$PATH:~/Library/Android/sdk/platform-tools


