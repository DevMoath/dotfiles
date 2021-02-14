# Moath dotfiles

## Table of Contents

- [Steps to bootstrap a new Mac](#steps-to-bootstrap-a-new-mac)
- [Optional](#optional)
- [Example](#example)
- [Useful resources for dotfiles](#useful-resources-for-dotfiles)

## Steps to bootstrap a new Mac

1. Install Apple's Command Line Tools, which are prerequisites for Git and Homebrew.

```shell
xcode-select --install
```

2. Clone repo into new hidden directory.

```shell
git clone https://github.com/DevMoath/dotfiles.git ~/.dotfiles
```

3. Create symlinks in the Home directory to the real files in the repo.

```shell
ln -s ~/.dotfiles/.zshrc ~/.zshrc
ln -s ~/.dotfiles/.gitignore_global ~/.gitignore_global
ln -s ~/.dotfiles/composer.json ~/.composer/composer.json
```

4. Install Homebrew, followed by the software listed in the Brewfile.

```shell
# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Then pass in the Brewfile location...
brew bundle --file ~/.dotfiles/Brewfile
```

5. Install Oh My ZSH

```shell
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

6. Install pure-prompt

```shell
npm install --global pure-prompt
```

7. Install vimrc

```shell
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime

sh ~/.vim_runtime/install_awesome_vimrc.sh
```

## Optional

* to disable "Last login" message:

```shell
toutch ~/.hushlogin 
```

* to disable restore terminal windows:

```shell
toutch ~/.bash_sessions_disable
```

## Example

<p align="center"><b>Dark theme</b></p>

![Dark Screenshot](images/screenshot-dark.png)

<p align="center"><b>Light theme</b></p>

![Light Screenshot](images/screenshot-light.png)

## Useful resources for dotfiles

* [Dotfiles from Start to Finish-ish](https://www.udemy.com/course/dotfiles-from-start-to-finish-ish/)
* [~/.dotfiles in 100 Seconds](https://youtu.be/r_MpUP6aKiQ)
* [Vim in 100 Seconds](https://youtu.be/-txKSRn0qeA)
* [Tweets about shell script](https://twitter.com/i/events/1335052425846284288)
