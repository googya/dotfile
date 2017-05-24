export GOPATH=/usr/local/opt/bin
export PATH=$PATH:$GOPATH:$GOPATH/bin
export EDITOR=atom

# export JAVA_TOOL_OPTIONS=-Dfile.encoding=UTF-8
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export JAVA_HEADERS=/System/Library/Frameworks/JavaVM.framework/Versions/A/Headers
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
export BUNDLER_EDITOR=vim

[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh # This loads NVM

alias ls='ls -v'
alias e='emacsclient -t'
alias ec='emacsclient -c'
alias bu='brew update'
alias bg='brew upgrade'
alias bcp='brew cleanup'
alias bs='brew services'
alias ghqlist='cd $(ghq list -p | peco)'
alias wuzz="$GOPATH/bin/wuzz"
alias fuck='$(thefuck $(fc -ln -1))'
alias gbc='git for-each-ref --format="%(committerdate) %09 %(authorname) %09 %(refname)" | sort -k5n -k2M -k3n -k4n'
alias chrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome"
alias chrome-canary="/Applications/Google\ Chrome\ Canary.app/Contents/MacOS/Google\ Chrome\ Canary"
alias chromium="/Applications/Chromium.app/Contents/MacOS/Chromium"

[ -f ~/.bundler-exec.sh ] && source ~/.bundler-exec.sh


PATH=$HOME/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:~/.cabal/bin:/usr/local/share/npm/bin:$PATH
PATH=~/.cargo/bin:$PATH
# Initialization for FDK command line tools.Wed Mar 26 09:29:41 2014
export PATH
export OPENSSL_LIB_DIR="/usr/local/opt/openssl/lib"
export OPENSSL_INCLUDE_DIR="/usr/local/opt/openssl/include"

if [ -n "$ZSH_VERSION" ]; then
  [[ -s `brew --prefix`/etc/autojump.zsh ]] && . `brew --prefix`/etc/autojump.zsh
elif [ -n "BASH_VERSION" ]; then
  [[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh
fi
export SSLKEYLOGFILE=~/sslkeylog.log
export PATH="$HOME/.cargo/bin:$PATH"
export RUSTUP_DIST_SERVER=https://mirrors.ustc.edu.cn/rust-static
export RUSTUP_UPDATE_ROOT=https://mirrors.ustc.edu.cn/rust-static/rustup


export ANDROID_HOME=${HOME}/Library/Android/sdk
export PATH=${PATH}:${ANDROID_HOME}/tools
export PATH=${PATH}:${ANDROID_HOME}/platform-tools
