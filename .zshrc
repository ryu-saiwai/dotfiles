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
alias mux="tmuxinator"

# Shortcut Alias
alias cdvm='cd ~/Documents/vm/' >> .bashrce
alias cdsls='cd ~/Documents/vm/serverless' >> .bashrce
alias cdfo='cd ~/Documents/vm/vm-frameout/guest-sync/frameout' >> .bashrce
alias cdrq='cd ~/Documents/vm/vm-road-quest/guest-sync/road-quest' >> .bashrce
alias cdfr='cd ~/Documents/vm/frame.localsite/' >> .bashrce


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

# for nodebrew
export PATH=$HOME/.nodebrew/current/bin:$PATH

# for rbenv
[[ -d ~/.rbenv  ]] && export PATH=${HOME}/.rbenv/bin:${PATH} && eval "$(rbenv init -)"

if [ -f /Applications/MacVim.app/Contents/MacOS/Vim ]; then
    alias vi='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'
    alias vim='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'
fi

# for pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# for env
#
export PHPENV_ROOT="$HOME/.phpenv"
export PATH="$PHPENV_ROOT/bin:$PATH"
eval "$(phpenv init -)"

 #for tmux
export TERM='xterm-256color'

# for tmuxinator Configuration
export EDITOR=/usr/bin/vim

if [ -f /Applications/MacVim.app/Contents/MacOS/Vim ]; then
    export EDITOR=/Applications/MacVim.app/Contents/MacOS/Vim
fi

export SHELL=/usr/local/bin/zsh

[[ -s /Users/ryu-saiwai/.tmuxinator/scripts/tmuxinator ]] && source /Users/ryu-saiwai/.tmuxinator/scripts/tmuxinator

function tmux-session-refresh () {
    if [ -n "$TMUX" ]; then
        unset $(tmux show-env | sed -n 's/^-//p')
          eval export $(tmux show-env | sed -n 's/$/"/; s/=/="/p')
    fi
}


# Notification
function display_notification () {
    osascript -e 'on run argv
    display notification current date as text with title item 1 of argv
    end run' -- "$*"
}

function with_display_notification () {
    "$@"
    display_notification "($?)" "$@"
}


export PATH="/usr/local/opt/openssl/bin:$PATH"

# heroku autocomplete setup
HEROKU_AC_ZSH_SETUP_PATH=/Users/ryu-saiwai/Library/Caches/heroku/autocomplete/zsh_setup && test -f $HEROKU_AC_ZSH_SETUP_PATH && source $HEROKU_AC_ZSH_SETUP_PATH;

# for Android Debug
export PATH=$PATH:/Users/ryu-saiwai/Library/Android/sdk/platform-tools

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /Users/ryu-saiwai/.nodebrew/node/v8.9.4/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/ryu-saiwai/.nodebrew/node/v8.9.4/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /Users/ryu-saiwai/.nodebrew/node/v8.9.4/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/ryu-saiwai/.nodebrew/node/v8.9.4/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh
# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[[ -f /Users/ryu-saiwai/.nodebrew/node/v8.9.4/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh ]] && . /Users/ryu-saiwai/.nodebrew/node/v8.9.4/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh
