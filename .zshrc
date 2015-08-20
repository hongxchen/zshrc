# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="ys"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

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
plugins=(git osx brew)

# User configuration

export PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:$PATH
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

export EDITOR=emacs

# emacs daemon
# export ALTERNATE_EDITOR=""
# alias emacs='emacsclient -t'
# alias em='emacs-24.5'

# golang
export GOPATH=/usr/local/opt/go/bin

# rvm
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# bash-complete
if [ -f $(brew --prefix)/usr/local/opt/bash-completion/etc/bash_completion ]; then
    . $(brew --prefix)/usr/local/opt/bash-completion/etc/bash_completion
fi

# coreutils
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"

# gnu-tar
export PATH="/usr/local/opt/gnu-tar/libexec/gnubin:$PATH"

# gnu-sed
export PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"
export MANPATH="/usr/local/opt/gnu-sed/libexec/gnuman:$MANPATH"

alias ls='gls --color=auto'
alias dir='gdir --color=auto'
alias grep='ggrep --color=auto'

# zsh-completions
fpath=(/usr/local/share/zsh-completions $fpath)

# dircolors-solarized
eval $(gdircolors ~/.dircolors-solarized/dircolors.ansi-dark)

# WebRTC
# export PATH=$HOME/Documents/Kits/webrtc/depot_tools:$PATH

# UNP
# export PATH=$HOME/Documents/Workspace/unp/unpv13e:$HOME/Documents/Workspace/unp/unpv13e/lib:$PATH

#dnvm
source /usr/local/bin/dnvm.sh

# thefuck
eval "$(thefuck --alias)"

# locate
alias locate='locate -i -d /var/db/locate.database'

# cpplint
alias cpplint='$HOME/Documents/Kits/styleguide/cpplint/cpplint.py'

export LUA_ROOT=$HOME/Documents/Kits/cloudwu/lua/install
export PATH=$LUA_ROOT/bin:$PATH

# ccache
export CCACHE_ROOT=usr/local/opt/ccache/libexec
export PATH=$CCACHE_ROOT:$PATH
export USE_CCACHE=1
export NDK_CCACHE=/usr/local/bin/ccache

# Android NDK
export ANDROID_NDK=/usr/local/opt/android-ndk-r9d

# Android SDK
export ANDROID_SDK=/usr/local/opt/android-sdk

# Android toolchains
export TOOLCHAINS_ROOT=$ANDROID_NDK/toolchains/arm-linux-androideabi-4.8/prebuilt/darwin-x86_64/bin
export PATH=$TOOLCHAINS_ROOT:$PATH

# Add environment variable COCOS_CONSOLE_ROOT for cocos2d-x
export COCOS_CONSOLE_ROOT=$HOME/Documents/Workspace/yiyou/youybs-client/cocos2d/tools/cocos2d-console/bin
export PATH=$COCOS_CONSOLE_ROOT:$PATH

# Add environment variable NDK_ROOT for cocos2d-x
export NDK_ROOT=/usr/local/opt/android-ndk-r9d
export PATH=$NDK_ROOT:$PATH

# Add environment variable ANDROID_SDK_ROOT for cocos2d-x
export ANDROID_SDK_ROOT=/usr/local/opt/android-sdk
export PATH=$ANDROID_SDK_ROOT:$PATH
export PATH=$ANDROID_SDK_ROOT/tools:$ANDROID_SDK_ROOT/platform-tools:$PATH

# Add environment variable ANT_ROOT for cocos2d-x
export ANT_ROOT=/usr/local/opt/ant/libexec/bin
export PATH=$ANT_ROOT:$PATH
