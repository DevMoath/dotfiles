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

message "composer Starting"
composer self-update --clean-backups
composer global update
message "composer Finished"
