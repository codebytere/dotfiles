#!/usr/bin/env zsh

##### INSTALLATION PATH #####
export ZSH=~/.oh-my-zsh
source $ZSH/oh-my-zsh.sh

##### MISC VARS #####
ZSH_THEME="sorin"

#load in all dotfile aliases and fxns
for file in ~/.dotfiles/zsh_files/{aliases,functions}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;

##### PLUGINS #####
plugins=(git zsh-iterm-touchbar)

##### USER CONFIG #####
export PATH="/Users/codebytere/.rvm/gems/ruby-2.3.0/bin:$HOME/.rvm/scripts/rvm:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:$HOME/.node/bin:$PATH"

# adds thefuck to shell
eval $(thefuck --alias)