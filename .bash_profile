mvim()
{
    (unset GEM_PATH GEM_HOME; command mvim "$@")
  }
alias ff='/Applications/FirefoxAurora.app/Contents/MacOS/firefox -p'
#alias go='python /Users/leslie/Gits/goagent/local/proxy.py'
alias subl='open -a Sublime\ Text\ 3'
alias mate='open -a TextMate.app'
alias mou='open -a Mou.app'
alias vico='open -a vico.app'
alias p='ps aux | grep'
alias unshort='/usr/bin/ruby /Users/leslie/unshorten.rb'
#alias eclipse=' /Users/leslie/useful_tools/eclipse/Eclipse.app/Contents/MacOS/eclipse -vm $JAVA_HOME'

#export DYLD_LIBRARY_PATH="/usr/local/Cellar/mysql/5.5.20/lib:$DYLD_LIBRARY_PATH"

#REDCAR="/Users/leslie/Gits/redcar/bin/"
RUBIES="$HOME/.rvm/rubies"
HOMEBREW_SBIN="/usr/local/sbin"

PATH=$HOMEBREW_SBIN:$RUBIES:$PATH; 
export PATH;
#export PYTHONPATH=/usr/local/lib/python2.7/site-packages:$PYTHONPATH


export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced


if [ -f $(brew --prefix)/etc/bash_completion ]; then
   . $(brew --prefix)/etc/bash_completion
   if [ -f $(brew --prefix)/etc/bash_completion.d/git-completion.bash ]; then
      .  $(brew --prefix)/etc/bash_completion.d/git-completion.bash
   fi  
fi
#function _update_ps1() {
#      export PS1="$(~/powerline-bash.py $?)"
#}
#
#export PROMPT_COMMAND="_update_ps1"

#alias java6="export JAVA_HOME=`/usr/libexec/java_home -v1.6`"
#alias java7="export JAVA_HOME=`/usr/libexec/java_home -v1.7`"
#java6
# add /usr/local/Cellar/autoconf/2.69/bin
AUTOCONF_BIN="/usr/local/Cellar/autoconf/2.69/bin"
PATH=$AUTOCONF_BIN:$PATH

source ~/.bashrc

#THIS MUST BE AT THE END OF THE FILE FOR JENV TO WORK!!!
#[[ -s "/Users/leslie/.jenv/bin/jenv-init.sh" ]] && source "/Users/leslie/.jenv/bin/jenv-init.sh" && source "/Users/leslie/.jenv/commands/completion.sh"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
# Initialization for FDK command line tools.Wed Mar 26 09:29:41 2014
FDK_EXE="/Users/leslie/bin/FDK/Tools/osx"
PATH=${PATH}:"/Users/leslie/bin/FDK/Tools/osx"
export PATH
export FDK_EXE
