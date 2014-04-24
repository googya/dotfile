export GOROOT=/usr/local/opt/go
export GOPATH=$GOROOT/bin
export PATH=$PATH:$GOPATH:$GOPATH/bin
export EDITOR=mate

export JAVA_TOOL_OPTIONS=-Dfile.encoding=UTF-8 
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export JAVA_HEADERS=/System/Library/Frameworks/JavaVM.framework/Versions/A/Headers
export EDITOR=mate
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
export BUNDLER_EDITOR=mate

[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh # This loads NVM

if [ -n "$ZSH_VERSION" ]; then
  [[ -s `brew --prefix`/etc/autojump.zsh ]] && . `brew --prefix`/etc/autojump.zsh
elif [ -n "BASH_VERSION" ]; then
  [[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh
fi

alias ls='ls -v'
[ -f ~/.bundler-exec.sh ] && source ~/.bundler-exec.sh

export ANDROID_HOME="$HOME/Applications/android/sdk"

PATH=$ANDROID_HOME/tools:$ANDROID_HOME/build-tools:$PATH

PATH=$HOME/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:~/.cabal/bin:/usr/local/share/npm/bin/:$PATH

#export PATH="$HOME/.rvm/gems/ruby-2.1.1/bin":$PATH

# Initialization for FDK command line tools.Wed Mar 26 09:29:41 2014
FDK_EXE="/Users/leslie/bin/FDK/Tools/osx"
PATH=${PATH}:"/Users/leslie/bin/FDK/Tools/osx"
export PATH
export FDK_EXE

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
