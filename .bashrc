export LANG=ja_JP.UTF-8
alias o='open'
alias ls='ls -alv'
alias rm='rm -ir'
alias vi='vim'


export PATH=/opt/local/bin:/opt/local/sbin/:$PATH
export MANPATH=/opt/local/share/man:/opt/local/man:$MANPATHll
# For homebrew
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH

if [ -f /Applications/MacVim.app/Contents/MacOS/Vim ]; then
    alias vi='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'
    alias vim='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'
fi

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

