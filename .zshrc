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

# export MANPATH="$HOME/.nvm/versions/node/v12.7.0/share/man:/Applications/CMake.app/Contents/man:/usr/local/share/man:/usr/share/man:$HOME/Developer/depot_tools/man:/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.14.sdk/usr/share/man:/Applications/Xcode.app/Contents/Developer/usr/share/man:/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/share/man:$HOME/.dotfiles/git/man"

export PATH="/usr/local/go/bin:/Applications/CMake.app/Contents/bin:/Users/codebytere/build-tools/src:/usr/local/texlive/2019/bin/x86_64-linux:/Users/codebytere/.rvm/gems/ruby-2.3.0/bin:$HOME/.rvm/scripts/rvm:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$HOME/.node/bin:$HOME/Developer/depot_tools:$HOME/Developer/git-fns"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" 
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

export GPG_TTY=$(tty)