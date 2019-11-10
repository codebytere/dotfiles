#!/usr/bin/env zsh

##### INSTALLATION PATH #####
export ZSH=~/.oh-my-zsh
source $ZSH/oh-my-zsh.sh

##### MISC VARS #####

ZSH_THEME="sorin"

#load in all dotfile aliases and fxns
for file in ~/.dotfiles/zsh_files/{aliases,functions,googlesource,electron,node}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;

##### PLUGINS #####

DISABLE_UNTRACKED_FILES_DIRTY="true"

##### USER CONFIG #####

export PATH="/usr/local/go/bin:/Applications/CMake.app/Contents/bin:/Users/codebytere/build-tools/src:/usr/local/texlive/2019/bin/x86_64-linux:/Users/codebytere/.rvm/gems/ruby-2.3.0/bin:$HOME/.rvm/scripts/rvm:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$HOME/.node/bin:$HOME/Developer/depot_tools:$HOME/.dotfiles/git/fns"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" 
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# increase default sccache
export SCCACHE_CACHE_SIZE=50G

export GPG_TTY=$(tty)