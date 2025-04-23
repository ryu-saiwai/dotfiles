setopt no_global_rcs
export LANG=ja_JP.UTF-8
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# AutoLoad
# ----------------------------------------------------------------------------------

# The following lines have been added by Docker Desktop to enable Docker CLI completions.

fpath=(
  /opt/homebrew/share/zsh-completions
  /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
  /Users/ryutarosaiwai/.docker/completions
  $fpath
)

autoload -Uz compinit bashcompinit
compinit
bashcompinit

# no beep sound
setopt no_beep
setopt nolistbeep

# CUI Color setting
export CLICOLOR=1
export LSCOLORS=DxGxcxdxCxegedabagacad

# Alias Setting
# ----------------------------------------------------------------------------------
alias o='open'
alias ls='gls -alv --color=auto'
alias rm='rm -ir'
alias python='python3'
alias pip='pip3'

# Shortcut Alias
# ----------------------------------------------------------------------------------
alias cdvm='cd ~/Documents/VM/'


## 重複パスを登録しない
typeset -U path cdpath fpath manpath

## pathを設定 (with Homebrew)
# ----------------------------------------------------------------------------------
typeset -U path PATH
path=(
  /opt/homebrew/bin(N-/)
  /opt/homebrew/sbin(N-/)
  /usr/local/bin(N-/)
  /usr/local/sbin(N-/)
  /usr/bin
  /usr/sbin
  /bin
  /sbin
  /Library/Apple/usr/bin
)


# for shell scripts / scripts
export PATH=~/Documents/shell-scripts:$PATH
export PATH=~/Documents/scripts:$PATH
export PATH=~/Documents/shell-scripts/cd:$PATH
export PATH=~/Documents/shell-scripts/tmuxinator:$PATH

export SHELL=/usr/local/bin/zsh
export PATH="/usr/local/opt/openssl/bin:$PATH"

# for anyenv
# ----------------------------------------------------------------------------------
eval "$(anyenv init -)"

# For phpenv
# ----------------------------------------------------------------------------------
export PATH="$HOME/.phpenv/bin:$PATH"
eval "$(phpenv init -)"

export PATH="/opt/homebrew/opt/bison/bin:$PATH"
export PATH="/opt/homebrew/opt/libxml2/bin:$PATH"
export PATH="/opt/homebrew/opt/bzip2/bin:$PATH"
export PATH="/opt/homebrew/opt/curl/bin:$PATH"
export PATH="/opt/homebrew/opt/libiconv/bin:$PATH"
export PATH="/opt/homebrew/opt/krb5/bin:$PATH"
export PATH="/opt/homebrew/opt/openssl@1.1/bin:$PATH"
export PATH="/opt/homebrew/opt/icu4c@76/bin:$PATH"
export PATH="/opt/homebrew/opt/icu4c@76/sbin:$PATH"
export PATH="/opt/homebrew/opt/tidy-html5/lib:$PATH"

# PKG_CONFIG_PATH
export PKG_CONFIG_PATH="/opt/homebrew/opt/krb5/lib/pkgconfig:$PKG_CONFIG_PATH"
export PKG_CONFIG_PATH="/opt/homebrew/opt/icu4c/lib/pkgconfig:$PKG_CONFIG_PATH"
export PKG_CONFIG_PATH="/opt/homebrew/opt/libedit/lib/pkgconfig:$PKG_CONFIG_PATH"
export PKG_CONFIG_PATH="/opt/homebrew/opt/libjpeg/lib/pkgconfig:$PKG_CONFIG_PATH"
export PKG_CONFIG_PATH="/opt/homebrew/opt/libpng/lib/pkgconfig:$PKG_CONFIG_PATH"
export PKG_CONFIG_PATH="/opt/homebrew/opt/libxml2/lib/pkgconfig:$PKG_CONFIG_PATH"
export PKG_CONFIG_PATH="/opt/homebrew/opt/libzip/lib/pkgconfig:$PKG_CONFIG_PATH"
export PKG_CONFIG_PATH="/opt/homebrew/opt/oniguruma/lib/pkgconfig:$PKG_CONFIG_PATH"
export PKG_CONFIG_PATH="/opt/homebrew/opt/openssl@1.1/lib/pkgconfig:$PKG_CONFIG_PATH"
export PKG_CONFIG_PATH="/opt/homebrew/opt/tidy-html5/lib/pkgconfig:$PKG_CONFIG_PATH"

# PHP_RPATHS
export PHP_RPATHS="/opt/homebrew/opt/zlib/lib /opt/homebrew/opt/bzip2/lib /opt/homebrew/opt/curl/lib /opt/homebrew/opt/libiconv/lib /opt/homebrew/opt/libedit/lib"

# PHP_BUILD_CONFIGURE_OPTS
export PHP_BUILD_CONFIGURE_OPTS="--with-bz2=$(brew --prefix bzip2) --with-iconv=$(brew --prefix libiconv) --with-tidy=$(brew --prefix tidy-html5) --with-external-pcre=$(brew --prefix pcre2) --with-zip --enable-intl --with-pear"

export CFLAGS="-Wno-error=implicit-function-declaration -DU_DEFINE_FALSE_AND_TRUE=1"
export CXXFLAGS="-Wno-error=implicit-function-declaration -DU_DEFINE_FALSE_AND_TRUE=1"

# icu4u
export LDFLAGS="-L/opt/homebrew/opt/icu4c@76/lib"
export CPPFLAGS="-I/opt/homebrew/opt/icu4c@76/include"

# For tmux
# ----------------------------------------------------------------------------------
export TERM=xterm-256color
export EDITOR=/usr/bin/vim
if [ -f /Applications/MacVim.app/Contents/MacOS/Vim ]; then
    export EDITOR=/Applications/MacVim.app/Contents/MacOS/Vim
fi

# For NVM
# ----------------------------------------------------------------------------------
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# For GCP
# ----------------------------------------------------------------------------------
if [ -f "$HOME/google-cloud-sdk/path.zsh.inc" ]; then
  source "$HOME/google-cloud-sdk/path.zsh.inc"
fi

if [ -f "$HOME/google-cloud-sdk/completion.zsh.inc" ]; then
  source "$HOME/google-cloud-sdk/completion.zsh.inc"
fi

# For API key Load
# ----------------------------------------------------------------------------------
if [ -f "$HOME/.zsh.keys" ]; then
  source "$HOME/.zsh.keys"
fi