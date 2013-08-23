export PATH=$HOME/.rvm/bin:$PATH #Add RVM to PATH for scripting
alias grep='grep --color=auto'
HISTSIZE=50000
PS1="\W \$ "
export PS1

source ~/.profile

#THIS MUST BE AT THE END OF THE FILE FOR JENV TO WORK!!!
[[ -s "/Users/leslie/.jenv/bin/jenv-init.sh" ]] && source "/Users/leslie/.jenv/bin/jenv-init.sh" && source "/Users/leslie/.jenv/commands/completion.sh"
#[[  -s "/Users/leslie/.bash/git-prompt.sh" ]] && source "/Users/leslie/.bash/git-prompt.sh"

