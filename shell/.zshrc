# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$HOME/.composer/vendor/bin:$(yarn global bin):/usr/local/sbin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# automatically update without prompting.
DISABLE_UPDATE_PROMPT="true"

# how often to auto-update (in days).
export UPDATE_ZSH_DAYS=7

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git laravel4 laravel5 composer)

source "$ZSH/oh-my-zsh.sh"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

source "$HOME/.exports"
source "$HOME/.aliases"
source "$HOME/.functions"
source "$HOME/.brew_functions"
source "$HOME/.docker_functions"
source "$HOME/.git_functions"
source "$HOME/.laravel_functions"
source "$HOME/.node_functions"
source "$HOME/.kubectl_functions"
source "$HOME/.pure"
