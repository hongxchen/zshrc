# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="ys"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

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
plugins=(git brew osx)

# User configuration

export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin"
export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# alias
alias vim="nvim"
alias ls='gls --color=auto'
alias grep='ggrep --color=auto'
alias cat='ccat'
alias locate='locate -i -d /var/db/locate.database'
alias cpplint='$HOME/Documents/Kits/styleguide/cpplint/cpplint.py'
alias svn=colorsvn
alias tree='tree -ah --du'
alias emacs='emacs -nw'
alias phalcon='$PTOOLSPATH/phalcon.php'

# dircolors-solarized
eval $(gdircolors ~/.dircolors-solarized/dircolors.ansi-dark)

# zsh-completions
fpath=(/usr/local/share/zsh-completions $fpath)

# zsh-autosuggestions
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# bash-complete
if [ -f $(brew --prefix)/usr/local/opt/bash-completion/etc/bash_completion ]; then
    . $(brew --prefix)/usr/local/opt/bash-completion/etc/bash_completion
fi

# imgcat
export PATH=$HOME/Documents/Kits/zshrc:$PATH

# gnu-tar
export PATH=/usr/local/opt/gnu-tar/libexec/gnubin:$PATH

# gnu-sed
export PATH=/usr/local/opt/gnu-sed/libexec/gnubin:$PATH
export MANPATH=/usr/local/opt/gnu-sed/libexec/gnuman:$MANPATH

# ccache
export PATH=/usr/local/opt/ccache/libexec:$PATH

# JAVA_HOME
export JAVA_HOME="/Library/Java/Home"

# Mono
export MONO_GAC_PREFIX="/usr/local"

# android
#export ANDROID_HOME=/usr/local/opt/android-sdk
#export ANDROID_SDK=/usr/local/opt/android-sdk
#export ANDROID_NDK=/usr/local/opt/android-ndk
#export PATH=$ANDROID_SDK/platform-tools:$ANDROID_SDK/tools:$PATH

# Golang
export GOROOT=/usr/local/opt/go/libexec
export GOPATH=$HOME/Documents/Workspace/go/libs:$HOME/Documents/Workspace/go/code
export GOBIN=$HOME/Documents/Workspace/go/code/bin
export PATH=$HOME/Documents/Workspace/go/libs/bin:$HOME/Documents/Workspace/go/code/bin:$PATH

# depot_tools
# export PATH=$HOME/Documents/Kits/webrtc/depot_tools:$PATH

# PHP
export PATH="$(brew --prefix homebrew/php/php71)/bin:$PATH"

# Phalcon
PTOOLSPATH=$HOME/Documents/Kits/php/phalcon-devtools

# Composer
export PATH=$HOME/.composer/vendor/bin:$PATH

# Urho3D
# export URHO3D_HOME="$HOME/Documents/Kits/Urho3D"

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
