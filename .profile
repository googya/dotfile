export GOPATH=/usr/local/opt/bin
export PATH=$PATH:$GOPATH:$GOPATH/bin
export EDITOR=vim

# export JAVA_TOOL_OPTIONS=-Dfile.encoding=UTF-8
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
export BUNDLER_EDITOR=vim

alias ls='ls -v'
alias e='/Applications/Emacs.app/Contents/MacOS/bin/emacsclient -t'
alias ec='/Applications/Emacs.app/Contents/MacOS/bin/emacsclient -c'
alias bu='brew update'
alias bg='brew upgrade'
alias bcp='brew cleanup'
alias bs='brew services'
alias ghqlist='cd $(ghq list -p | peco)'
alias wuzz="$GOPATH/bin/wuzz"
alias fuck='$(thefuck $(fc -ln -1))'
alias gbc='git for-each-ref --format="%(committerdate) %09 %(authorname) %09 %(refname)" | sort -k5n -k2M -k3n -k4n'
alias gb='git --no-pager branch'
alias chrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome"
alias chrome-canary="/Applications/Google\ Chrome\ Canary.app/Contents/MacOS/Google\ Chrome\ Canary"
alias chromium="/Applications/Chromium.app/Contents/MacOS/Chromium"
alias deploy_test_ios="npm run test:deploy-ios"
alias deploy_test_and="npm run test:deploy-android"

PATH=~/.cargo/bin:$PATH
export OPENSSL_LIB_DIR="/usr/local/opt/openssl/lib"
export OPENSSL_INCLUDE_DIR="/usr/local/opt/openssl/include"

if [ -n "$ZSH_VERSION" ]; then
  [[ -s `brew --prefix`/etc/autojump.zsh ]] && . `brew --prefix`/etc/autojump.zsh
elif [ -n "BASH_VERSION" ]; then
  [[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh
fi
export SSLKEYLOGFILE=~/sslkeylog.log="$HOME/.cargo/bin:$PATH"
export RUSTUP_DIST_SERVER=https://mirrors.ustc.edu.cn/rust-static
export RUSTUP_UPDATE_ROOT=https://mirrors.ustc.edu.cn/rust-static/rustup

# Initialization for FDK command line tools.Tue Aug 29 18:44:55 2017
#export ANDROID_HOME=~/android_sdk
export ANDROID_HOME=~/Library/Android/sdk/
export ANDROID_SDK_ROOT=$ANDROID_HOME
export PATH=~/android_sdk/tools:$PATH
export PATH=~/android_sdk/platform-tools:$PATH
export PATH=~/bin:$PATH

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
