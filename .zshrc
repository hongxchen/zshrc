# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="ys"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
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
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git brew osx docker docker-compose ng golang)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin"
export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vim'
fi

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
alias ls='gls --color=auto'
#alias grep='ggrep --color=auto'
alias cat='ccat'
alias cpplint='$HOME/Documents/Kits/styleguide/cpplint/cpplint.py'
alias svn=colorsvn
alias tree='tree -ah --du'
alias ip='curl ip.cn'
alias gf=gf

# binutils
export PATH="/usr/local/opt/binutils/bin:$PATH"

# PATH
eval $(/usr/libexec/path_helper -s)

# dircolors-solarized
eval `gdircolors /Users/hongxchen/Documents/Kits/dircolors-solarized/dircolors.ansi-dark`

# zsh-completions
fpath=(/usr/local/share/zsh-completions $fpath)

# zsh-autosuggestions
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# zsh-syntax-highlighting
export ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR=/usr/local/share/zsh-syntax-highlighting/highlighters

# bash-complete
if [ -f $(brew --prefix)/usr/local/opt/bash-completion/etc/bash_completion ]; then
    . $(brew --prefix)/usr/local/opt/bash-completion/etc/bash_completion
fi

# NativeScript
###-tns-completion-start-###
if [ -f /Users/hongxchen/.tnsrc ]; then
    source /Users/hongxchen/.tnsrc
fi
###-tns-completion-end-###

# ccache
export PATH="/usr/local/opt/ccache/libexec:$PATH"

# Java
#export JAVA_HOME="/Library/Java/JavaVirtualMachines/zulu-7.jdk/Contents/Home"
export JAVA_HOME="/Library/Java/JavaVirtualMachines/zulu-8.jdk/Contents/Home"
#export JAVA_HOME="/Library/Java/JavaVirtualMachines/zulu-11.jdk/Contents/Home"
export PATH="$JAVA_HOME/bin:$PATH"
export CLASSPATH=".:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar"

# Android
export ANDROID_HOME="/usr/local/Caskroom/android-sdk/4333796"
export PATH="$ANDROID_HOME/tools:$PATH"
export PATH="$ANDROID_HOME/emulator:$PATH"
export PATH="$ANDROID_HOME/platform-tools:$PATH"
export ANDROID_NDK_HOME="$ANDROID_HOME/ndk-bundle"
export PATH="$ANDROID_HOME/ndk-bundle:$PATH"

# Golang
export GOROOT="/usr/local/opt/go/libexec"
export GOBIN="$HOME/Documents/Workspace/go/bin"
export GOPATH="$HOME/Documents/Workspace/go"
export PATH="$HOME/Documents/Workspace/go/bin:$PATH"

# Composer
export PATH="$HOME/.composer/vendor/bin:$PATH"

# Urho3D
#export URHO3D_HOME="$HOME/Documents/Workspace/urho3d/SDK"
#export ANDROID_NDK="/usr/local/Caskroom/android-sdk/3859397/ndk-bundle"
#export PATH="$HOME/Documents/Workspace/urho3d/SDK/bin:$PATH"

# Mycli
export LESS="-RXF"

# Qt
export PATH="/usr/local/opt/qt/bin:$PATH"

# Mono
#export MONO_GAC_PREFIX="/usr/local"

# OpenSSL
export PATH="/usr/local/opt/openssl/bin:$PATH"

# MySQL
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"

# Flutter
export PUB_HOSTED_URL=https://pub.flutter-io.cn
export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn
export PATH="$HOME/Documents/Kits/flutter/bin:$PATH"

# Imgcat
export PATH="$HOME/Documents/Kits/zshrc:$PATH"

# Proxy
#export all_proxy=http://127.0.0.1:19181
#export http_proxy=http://127.0.0.1:19180
#export https_proxy=http://127.0.0.1:19180
#export no_proxy=localhost,127.0.0.1

# Depot_tools
#export PATH="$HOME/Documents/Kits/depot_tools:$PATH"

# Rust
export CARGO_HOME="$HOME/.cargo/"
export RUSTBINPATH="$HOME/.cargo/bin"
export RUST="$HOME/.rustup/toolchains/nightly-x86_64-apple-darwin"
export RUST_SRC_PATH="$RUST/lib/rustlib/src/rust/src"
export PATH=$RUSTBINPATH:$PATH
export RUSTUP_DIST_SERVER=https://mirrors.tuna.tsinghua.edu.cn/rustup

# OpenResty
export PATH="/usr/local/opt/openresty-openssl/bin:$PATH"

# .NET Core SDK tools
export PATH="$PATH:/Users/hongxchen/.dotnet/tools"

# .vcpkg
export PATH="$HOME/Documents/Kits/vcpkg:$PATH"

# Conda
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
#__conda_setup="$('/usr/local/Caskroom/miniconda/base/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
#if [ $? -eq 0 ]; then
#    eval "$__conda_setup"
#else
#    if [ -f "/usr/local/Caskroom/miniconda/base/etc/profile.d/conda.sh" ]; then
#        . "/usr/local/Caskroom/miniconda/base/etc/profile.d/conda.sh"
#    else
#        export PATH="/usr/local/Caskroom/miniconda/base/bin:$PATH"
#    fi
#fi
#unset __conda_setup
# <<< conda initialize <<<

