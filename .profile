export GOROOT=/usr/local/Cellar/go/1.1.2
export GOPATH=$GOROOT/bin
export PATH=$PATH:$GOPATH:$GOPATH/bin

#THIS MUST BE AT THE END OF THE FILE FOR JENV TO WORK!!!
[[ -s "/Users/leslie/.jenv/bin/jenv-init.sh" ]] && source "/Users/leslie/.jenv/bin/jenv-init.sh" && source "/Users/leslie/.jenv/commands/completion.sh"

export JAVA_TOOL_OPTIONS=-Dfile.encoding=UTF-8 
