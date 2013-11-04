# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="af-magic" #minimal

alias e="st"
alias cave="~/.supp/code"

# create a new post and fill the template
alias jpost="sh ~/.jklpost"
 
# start up Jekyll for local preview of blog
alias jpreview="cd ~/.supp/code/blog/scribble && jekyll serve"
 
# delete the existing built site and rebuild
alias jbuild="cd ~/.supp/code/blog/scribble && jekyll build"
 
# use rsync to push the weblog to my (ve)
alias deploy="echo 'Deploying to remote host...' &&
cd /Users/TJ/Desktop/foobar.com && rsync -rtz --delete _site/ deploy@foobar.com:/var/www/_site &&
echo 'Done!'"

skip_global_compinit=1 #unsure

# Example aliases
alias zshconfig="e ~/.zshrc"
alias ohmyzsh="e ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git sublime osx)

source $ZSH/oh-my-zsh.sh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Customize to your needs...
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:/usr/local/share/npm/bin:/usr/local/opt/ruby/bin:$PATH
export NODE_PATH=/usr/local/lib/node_modules
