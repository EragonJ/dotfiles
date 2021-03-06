source ~/.profile

# Path to your oh-my-zsh configuration.
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
plugins=(git coffee brew github git-extras grunt npm node zsh-syntax-highlighting frontend-search zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
# export PATH=/Users/EragonJ/bin:/Users/eragonj/pear/bin:/opt/local/bin:/opt/local/sbin:/usr/local/bin/:/opt/local/lib/mysql55/bin/:/opt/local/apache2/bin:/Users/eragonj/ec2-api-tools/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin

# keychain ~/.ssh/id_rsa
# source ~/.keychain/Chia-LungtekiMacBook-Pro.local-sh

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# added by travis gem
[ -f /Users/EragonJ/.travis/travis.sh ] && source /Users/EragonJ/.travis/travis.sh

export NVM_DIR="/Users/EragonJ/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[[ -s "$HOME/.avn/bin/avn.sh" ]] && source "$HOME/.avn/bin/avn.sh" # load avn
