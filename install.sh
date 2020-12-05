#!/bin/sh

set -e

install() {
    echo '1. Copy configurations'
    cp -rf ./shell/{.aliases,.exports,.functions,.gitignore_global,.hyper.js,.pure,.zshrc} "$HOME"

    echo '2. Copy scripts'
    cp -R ./.scripts "$HOME"

    echo '------------------'
    echo '-------DONE-------'
    echo '------------------'
}

echo 'Copy terminal configurations'
echo '------------------'
echo 'This will reset your terminal configurations. Are you sure? (y/n)'
read -p 'Answer: ' reply

if [[ $reply =~ ^[Yy]$ ]]; then
    install
fi
