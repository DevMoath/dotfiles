#!/bin/bash

set -e

message() {
    echo "${GREEN}$1${DEFAULT}"
}

message "brew Starting"
brew update
brew upgrade
brew upgrade --cask
brew cleanup
message "brew Finished"

message "softwareupdate Starting"
softwareupdate --all --install --force
message "softwareupdate Finished"

message "npm Starting"
npm update -g
message "npm Finished"

message "composer Starting"
composer self-update --clean-backups --no-progress --stable --ansi
composer global update --prefer-dist --prefer-stable --ansi
message "composer Finished"

message "hunspell-dictionaries Starting"
git -C "$HOME/hunspell-dictionaries" pull --all
message "hunspell-dictionaries Finished"
