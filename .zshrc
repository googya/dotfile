ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

fpath=(/usr/local/share/zsh-completions $fpath)
source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/local/sbin:/usr/sbin:/sbin:/usr/X11/bin:/usr/local/sbin:/usr/bin:/bin:/opt/X11/bin:$PATH

#THIS MUST BE AT THE END OF THE FILE FOR JENV TO WORK!!!

  alias subl='open -a Sublime\ Text\ 3'
  alias mate='open -a TextMate.app'
  alias mou='open -a Mou.app'

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

[[ -s "/Users/leslie/.jenv/bin/jenv-init.sh" ]] && source "/Users/leslie/.jenv/bin/jenv-init.sh" && source "/Users/leslie/.jenv/commands/completion.sh"

source ~/.profile

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
