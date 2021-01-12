#!/bin/sh

DEFAULT='\033[0m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'

set -e

install() {
    echo "${CYAN}1. Copy configurations${DEFAULT}"
    cp -rf ./shell/{.aliases,.exports,.functions,.gitignore_global,.hyper.js,.pure,.zshrc} "$HOME"
    echo "${GREEN}DONE${DEFAULT}"

    echo "${CYAN}2. Copy scripts${DEFAULT}"
    cp -R ./.scripts "$HOME"
    echo "${GREEN}DONE${DEFAULT}"

    echo "${CYAN}3. Copy functions${DEFAULT}"
    cp -R ./shell/functions/{.brew_functions,.docker_functions,.git_functions,.laravel_functions} "$HOME"
    echo "${GREEN}DONE${DEFAULT}"
}

echo "${CYAN}COPY TERMINAL CONFIGURATIONS${DEFAULT}"
echo "${CYAN}----------------------------${DEFAULT}"

if [[ $1 == "-Y" ]]; then
    install
else
    echo "${YELLOW}This will reset your terminal configurations. Are you sure? (y/n)${DEFAULT}"
    read -p "Answer: " reply

    if [[ $reply =~ ^[Yy]$ ]]; then
        install
    fi
fi
