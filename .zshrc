#!/usr/bin/env zsh

##### INSTALLATION PATH #####
export ZSH=~/.oh-my-zsh
source $ZSH/oh-my-zsh.sh

##### MISC VARS #####

ZSH_THEME="sorin"

#load in all dotfile aliases and fxns
for file in ~/.dotfiles/zsh_files/{aliases,functions,googlesource,electron,chromium}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;

##### PLUGINS #####

DISABLE_UNTRACKED_FILES_DIRTY="true"

##### USER CONFIG #####
export PATH="/Users/codebytere/.rvm/gems/ruby-2.3.0/bin:$HOME/.rvm/scripts/rvm:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:$HOME/.node/bin::$HOME/depot_tools:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export GIT_CACHE_PATH="${HOME}/.git_cache"
export SCCACHE_BUCKET="electronjs-sccache"
export SCCACHE_TWO_TIER=true

export CHROMIUM_BUILDTOOLS_PATH=`pwd`/buildtools
export GN_EXTRA_ARGS="${GN_EXTRA_ARGS} cc_wrapper=\"${PWD}/electron/external_binaries/sccache\""