# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH="/Users/silver/.oh-my-zsh"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="hack"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  osx
  copyfile
  brew
  web-search
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

#### Exports ####
export PATH="$PATH:/usr/local/bin:/bin"
export PATH="$PATH:$HOME/scripts"
export PATH="$PATH:$HOME/bin"
export PATH="$PATH:/Users/silver/Library/Python/3.7/bin"
export PATH="$HOME/Library/Haskell/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"

export EDITOR="nvim"
export NICE_PATH="/Users/silver/Documents/nice/"

#### Commands ####
# Script that aliases and sets enviornmental secrets
neofetch --ascii /Users/silver/.ascii_art

#### Env Setup ####
eval "$(pyenv init -)"
eval "$(nodenv init -)"
eval "$(rbenv init -)"

#### SECRETS ####
source ~/.secrets

#### Aliases ####
alias v="vim"
alias z="zsh"
alias vim="nvim"
alias nrun="npm run"
alias k8="kubectl"

alias fowl="git push --force-with-lease"
alias canada="git commit --amend --no-edit"
alias bat="bat --paging never"

alias update_zsh="vim ~/.zshrc"
alias update_vim="vim ~/.vimrc"

alias vlc='/Applications/VLC.app/Contents/MacOS/VLC'

alias weather='curl http://wttr.in/'
## Nifty CLI Alternatives
# alias ping="prettyping"

#### Linux Specific ####
# alias start-dual="xrandr --output HDMI-1-1 --left-of eDP-1-1 --auto"
# alias stop-dual="xrandr --output HDMI-1-1 --off --auto"
# alias lock="sh ~/lock.sh &> /dev/null"

# feh --bg-scale $WALLPAPER
#### Cleanup ####
cat ~/.message

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/silver/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/silver/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/silver/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/silver/Downloads/google-cloud-sdk/completion.zsh.inc'; fi
