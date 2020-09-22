#!/usr/bin/env zsh

##### MISC VARS #####

ZSH_THEME="csv"

# Load in all dotfile aliases and fxns
for file in ~/.dotfiles/zsh_files/{aliases,functions,googlesource}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;

# Load custom git functions (see: https://github.com/codebytere/git-fns)
source ~/Developer/git-fns

##### USER CONFIG #####

export PATH="/usr/local/opt/icu4c/bin:/usr/local/opt/icu4c/sbin:/usr/local/opt/ruby/bin:/usr/local/lib/ruby/gems/2.7.0/bin:/usr/local/go/bin:/Applications/CMake.app/Contents/bin:/Users/codebytere/build-tools/src:/usr/local/texlive/2019/bin/x86_64-linux:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$HOME/.node/bin:$HOME/Developer/depot_tools:$HOME/Developer/git-fns/fns:$PATH"
export MANPATH=":/Applications/CMake.app/Contents/man:/usr/local/share/man:/usr/share/man:/Users/codebytere/Developer/depot_tools/man:/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.14.sdk/usr/share/man:/Applications/Xcode.app/Contents/Developer/usr/share/man:/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/share/man:/Users/codebytere/Developer/git-fns/man"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" 
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

export GPG_TTY=$(tty)

# Enable syntax highlighting in new shell sessions
source /usr/local/share/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

##### INSTALLATION PATH #####

export ZSH=~/.oh-my-zsh
source $ZSH/oh-my-zsh.sh
