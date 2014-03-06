alias grep='grep --color=auto'
HISTSIZE=50000
#PS1="\W \$ "
PS1="\W \$(git branch 2>/dev/null | grep -e '\* ' | sed 's/^..\(.*\)/(\1)/') \$ "
export PS1

source ~/.profile

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
