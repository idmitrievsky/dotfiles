source .antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle osx
antigen bundle brew

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen bundle sindresorhus/pure

# Example aliases
alias zshconfig="mvim ~/.zshrc"
alias batcave="~/.supp/code"
alias bcv=batcave

# Tell antigen that you're done.
antigen apply

source ~/.git-flow-completion.zsh

export PATH=/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:/usr/local/share/npm/bin:/usr/local/opt/ruby/bin:/usr/texbin:$PATH
export NODE_PATH=/usr/local/lib/node_modules
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

function gi() { curl http://www.gitignore.io/api/$@ ;}
