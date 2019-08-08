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

export PATH="/usr/local/texlive/2019/bin/x86_64-darwin:/Users/codebytere/.dotfiles/git/fns:/bin:/usr/local/MacGPG2/bin:/Users/codebytere/.rvm/gems/ruby-2.3.0/bin:/Users/codebytere/.nvm/versions/node/v12.3.1/bin:/usr/bin:/usr/sbin:/sbin:/usr/local/bin:/Users/codebytere/.node/bin:/Users/codebytere/Developer/depot_tools"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" 
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

export GIT_CACHE_PATH="${HOME}/.git_cache"
export SCCACHE_BUCKET="electronjs-sccache"
export SCCACHE_TWO_TIER=true

export CHROMIUM_BUILDTOOLS_PATH=`pwd`/buildtools
export GN_EXTRA_ARGS="${GN_EXTRA_ARGS} cc_wrapper=\"${PWD}/electron/external_binaries/sccache\""

# increase default sccache
export SCCACHE_CACHE_SIZE=20G

export GPG_TTY=$(tty)