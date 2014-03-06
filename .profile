export GOROOT=/usr/local/Cellar/go/1.1.2
export GOPATH=$GOROOT/bin
export PATH=$PATH:$GOPATH:$GOPATH/bin

export JAVA_TOOL_OPTIONS=-Dfile.encoding=UTF-8 
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export JAVA_HEADERS=/System/Library/Frameworks/JavaVM.framework/Versions/A/Headers
export EDITOR=mate
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
export BUNDLER_EDITOR=mate

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"  # Load RVM into a shell session *as a function*
[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh # This loads NVM

if [ -n "$ZSH_VERSION" ]; then
  [[ -s `brew --prefix`/etc/autojump.zsh ]] && . `brew --prefix`/etc/autojump.zsh
elif [ -n "BASH_VERSION" ]; then
  [[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh
fi

export PATH="$HOME/.rvm/gems/ruby-2.1.1/bin":$PATH

alias ls='ls -v'
[ -f ~/.bundler-exec.sh ] && source ~/.bundler-exec.sh

#PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

export ANDROID_HOME="$HOME/Applications/android/sdk"

PATH=$ANDROID_HOME/tools:$ANDROID_HOME/build-tools:$PATH
