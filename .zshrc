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
plugins=(brew git rbenv tmux tmuxinator osx)

fpath=(/usr/local/share/zsh-completions $fpath)

# Customize to your needs...

#THIS MUST BE AT THE END OF THE FILE FOR JENV TO WORK!!!

  alias subl='open -a Sublime\ Text\ 3'
  alias mate='open -a TextMate.app'
  alias mou='open -a Mou.app'
  alias nrs='npm run server'
  alias nrd='npm run deploy-dev'
  alias nrt="npm run deploy-test"
  alias cdd="bundle exec cap development deploy"
  alias ctd="bundle exec cap testing deploy"
  alias vsc="open -a Visual\ Studio\ Code.app"

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.profile

[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

# export PROMPT="$PROMPT\$(git-radar --zsh --fetch) "


# autoload -U add-zsh-hook
# load-nvmrc() {
#   if [[ -f .nvmrc && -r .nvmrc ]]; then
#     nvm use
#   elif [[ $(nvm version) != $(nvm version default)  ]]; then
#     nvm use default
#   fi
# }
# add-zsh-hook chpwd load-nvmrc
# load-nvmrc
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

export TWITTER_CONSUMER_KEY="fcBOrOpkAlW9Hd0zMJWJmNH9Y"
export TWITTER_CONSUMER_SECRET="7hazATx7pbfqTYchOvVHcnAdAHWbjXKyv7njVLSrSO2XiHTen5"
export TWITTER_ACCESS_TOKEN="306021776-HxLgFXEP9BftKlk3cNUkri4Pux3OVKoIqVunMrvq"
export TWITTER_ACCESS_TOKEN_SECRET="jokaQrowpCavAdlyRKQTaorZ4RLPcUXSCpCl9DP9vTZ01"
fortune | cowsay | lolcat
source $ZSH/oh-my-zsh.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
