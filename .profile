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
alias ls='ls -v'
[ -f ~/.bundler-exec.sh ] && source ~/.bundler-exec.sh
