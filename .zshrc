# Path to your dotfiles.
export DOTFILES=$HOME/.dotfiles

# check if brew installed in your system or not
if command -v brew &>/dev/null; then
    BREW_PREFIX=$(brew --prefix)

    export PATH=${BREW_PREFIX}/sbin:$PATH
fi

# check if composer installed in your system or not
if command -v composer &>/dev/null; then
    COMPOSER_PREFIX=$(composer global config bin-dir --absolute --quiet)

    export PATH=${COMPOSER_PREFIX}:$PATH
fi

# check if npm installed in your system or not
if command -v npm &>/dev/null; then
    NPM_PREFIX=$(npm -g prefix)

    export PATH=${NPM_PREFIX}:${NPM_PREFIX}/bin:$PATH
fi

# Path to your oh-my-zsh installation.
export ZSH=${HOME}/.oh-my-zsh

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
export ZSH_THEME="minimal"

# automatically update without prompting.
export DISABLE_UPDATE_PROMPT="true"

# how often to auto-update (in days).
export UPDATE_ZSH_DAYS=7

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git docker-compose zsh-syntax-highlighting iterm2)

source "$ZSH/oh-my-zsh.sh"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

# customize homebrew cask options
# "--no-quarantine": disable Apple’s quarantining prompt
export HOMEBREW_CASK_OPTS="--no-quarantine"

# disable homebrew anonymous analytics
export HOMEBREW_NO_ANALYTICS=1

# "bat" as manpager
#export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# "vim" as manpager
export MANPAGER='/bin/bash -c "vim -MRn -c \"set buftype=nofile showtabline=0 ft=man ts=8 nomod nolist norelativenumber nonu noma\" -c \"normal L\" -c \"nmap q :qa<CR>\"</dev/tty <(col -b)"'

# Customize bat options
export BAT_PAGER="less -RF"

# Preferred editor for local and remote sessions
export EDITOR='vim'

# Make some commands not show up in history
export HISTIGNORE="ls:cd:cd -:pwd:exit:date:* --help"

# And include the parameter for ZSH
export HISTORY_IGNORE="(ls|cd|cd -|cd ..|pwd|exit|sudo reboot|history|date|* --help)"

# Always enable colored `grep` output
export GREP_OPTIONS="--color=auto -in -A 5 -B 5"

# You may need to manually set your language environment
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Load pure-prompt its "Pretty, minimal and fast ZSH prompt",
# see how to install it here https://github.com/sindresorhus/pure.
# Initialize the prompt system (if not so already):
autoload -U promptinit && promptinit

# Turn on git stash status
zstyle :prompt:pure:git:stash show yes

# Change default colors
zstyle ':prompt:pure:prompt:error' color red
zstyle ':prompt:pure:prompt:success' color blue
zstyle ':prompt:pure:prompt:continuation' color blue

# Choose pure
prompt pure

# Add custom aliases
alias sudo="sudo "
alias cl="clear"
alias sshconfig="vi ${HOME}/.ssh/config"
alias catsshconfig="cat ${HOME}/.ssh/config"
alias copyssh="pbcopy < ${HOME}/.ssh/id_rsa.pub"
alias reloadcli="source ${HOME}/.zshrc"
alias o="open ."
alias phpstorm='open -a /Applications/PhpStorm.app "`pwd`"'
alias watch='watch '

# Directories
alias dotfiles="cd ${DOTFILES}"
alias code="cd ${HOME}/code"

# Apps I use for my work
alias work="light_theme && cd /Applications && open Slack.app Spark.app BIG-IP\ Edge\ Client.app Docker.app PhpStorm.app Microsoft\ Teams.app && cd -"

# Empty the Trash on all mounted volumes and the main HDD
# also, clear Apple’s System Logs to improve shell startup speed
alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl"

# This lists your path items on separate lines in ZSH.
alias trail='<<<${(F)path}'

# Restart touch bar
alias touchbar="killall ControlStrip"

# IP addresses
alias ip="curl https://diagnostic.opendns.com/myip ; echo"

# ls aliases
alias ll='ls -hAlF'

# git aliases
alias gc="git clone"
alias gr="git remote get-url origin"
alias gs="git status"
alias gpu="git pull"
alias gpua="git pull --all"
alias ga="git add ."
alias gp="git push"
alias gch="git checkout"
alias gm="git commit -am"

# php and laravel aliases
alias art="php artisan"
alias migrate="php artisan migrate"
alias migrater="php artisan migrate:refresh"
alias migratef="php artisan migrate:fresh"
alias tin="php artisan tinker"
alias lr="php artisan route:list > routes.trash"
alias test="XDEBUG_MODE=coverage php artisan test"
alias testf="php artisan test --filter"
alias phpunit="vendor/bin/phpunit"
alias phpunitf="vendor/bin/phpunit --filter"
alias pest="./vendor/bin/pest"
alias pestf="./vendor/bin/pest --filter"
alias analyse="./vendor/bin/phpstan analyse"

# npm aliases
alias nci="rm -rf node_modules/ && npm i"
alias ni="npm i"
alias nif="npm i --force"
alias nf="npm audit fix"
alias np="npm run production"
alias nw="npm run watch"
alias ns="npm run start"
alias nd="npm run dev"
alias nb="npm run build"
alias nu="npm up"
alias nuf="npm up --force"
alias nr="npm remove"

# composer aliases
alias c="composer"
alias ci="composer install"
alias cii="composer install --ignore-platform-reqs"
alias cu="composer update"
alias cui="composer update --ignore-platform-reqs"
alias cr="composer require"
alias cri="composer require --ignore-platform-reqs"
alias crm="composer remove"
alias cda="composer dump-autoload"
alias crn="composer run-script"

# docker aliases
alias d="docker"
alias dr="docker run"
alias db="docker build"
alias de="docker exec"
alias da="docker attach"
alias dc="docker-compose"
alias dp="docker system prune"

# kubectl aliases
alias k="kubectl"

# Add custom functions

# switch service version via Homebrew
brew_switch() {
    brew unlink "$1" && brew link "$2"
}

nah() {
    git reset --hard
    rm -rf $(gs -s)
}

# pass your name\username and email to config your local user git
git_config() {
    git config user.name "$1"
    git config user.email "$2"
}

# pass your name\username and email to config your global user git
git_global_config() {
    git config --global user.name "$1"
    git config --global user.email "$2"
}

# find out the local git user
git_whoami() {
    git config user.name
    git config user.email
}

# find out the global git user
git_global_whoami() {
    git config --global user.name
    git config --global user.email
}

# stop all docker containers and prune them
d_prune_container() {
    docker stop $(docker ps -aq) || :
    docker container prune -f
}

# prune all docker images
d_prune_image() {
    docker image prune -fa
}

# prune docker system (containers, images, networks, volumes, ...etc)
d_prune_system() {
    d_prune_container
    d_prune_image
    docker system prune -fa
}

# run a docker container with interactive mode and delete it once you exist
d_run() {
    docker run --rm -it "$@"
}

# build docker image and run it with interactive mode and port 8080 and delete it once you exist
d_start() {
    docker build -t "$1" . && docker run --rm -it -p 8080:80 "$1"
}

# start docker-compose in background and build images and remove containers for services not defined in the Compose file
dc_up() {
    docker-compose up -d --build --remove-orphans "$@"
}

# stop docker-compose and remove containers and networks
dc_down() {
    docker-compose down -v --remove-orphans "$@"
}

# restart docker-compose
dc_restart() {
    docker-compose down -v --remove-orphans
    docker-compose up -d --build --remove-orphans "$@"
}

# run specific service in docker-compose and delete it once exits
dc_run() {
    docker-compose run --rm "$@"
}

# execute command docker-compose service
dc_exec() {
    docker-compose exec "$@"
}

# run artisan schedule every 60 min, instead of using corn job
artisan_scheduler() {
    while true; do
        php artisan schedule:run
        echo "Sleeping 60 seconds..."
        sleep 60
    done
}

# connect to a pod in k8s using kubectl
connect_pod() {
    kubectl exec --stdin --tty "$1" -- /bin/bash
}

# decode secret value from sealed secret in k8s
decode_secret() {
    kubectl get secrets "$1" -o json | jq ".data.$2" | sed -e 's/^"//' -e 's/"$//' | base64 --decode
}

# toggle system theme to dark theme
dark_theme() {
    osascript -e 'tell app "System Events" to tell appearance preferences to set dark mode to true'
    iterm2_profile dark
}

# toggle system theme to light theme
light_theme() {
    osascript -e 'tell app "System Events" to tell appearance preferences to set dark mode to false'
    iterm2_profile light
}
