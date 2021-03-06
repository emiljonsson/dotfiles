source /Users/emiljonsson/.bash_profile
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/emiljonsson/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="wild-cherry"

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
plugins=(git)

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
#export ANDROID_HOME=/Development/android-sdk/
#export PATH=${PATH}:/Development/android-sdk/platform-tools:/Development/android-sdk/tools
export PATH=/Users/emiljonsson/Library/Android/sdk/tools:$PATH
export PATH=/Users/emiljonsson/Library/Android/sdk/platform-tools:$PATH

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/emiljonsson/Downloads/Nedlastinger-tmp/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/emiljonsson/Downloads/Nedlastinger-tmp/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/emiljonsson/Downloads/Nedlastinger-tmp/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/emiljonsson/Downloads/Nedlastinger-tmp/google-cloud-sdk/completion.zsh.inc'; fi

function lazygit(){
  git add .
  git commit -m "$*"
  git push origin master
}
alias lg="lazygit"
function gets(){
  rm main.cpp
  cp ~/Programming/tmp_test_can_be_deleted/main.cpp .
  rm mbed_app.json
  cp ~/Programming/tmp_test_can_be_deleted/mbed_app.json .
  rm main.h
  cp ~/Programming/tmp_test_can_be_deleted/main.h .
  rm uCam.cpp
  cp ~/Programming/tmp_test_can_be_deleted/uCam.cpp .
  rm uCam.h
  cp ~/Programming/tmp_test_can_be_deleted/uCam.h .
}
function reload(){
   source ~/.zshrc
}
function editvim(){
  cd
  sudo vim ~/git/dotfiles/.vimrc
}
function editzsh(){
  cd
  vim ~/Git/dotfiles/.zshrc
}
# Custom cd
c() {
	cd $1;
	ls;
}
alias cd="c"

function up_widget() {
	BUFFER="cd .."
	zle accept-line
}
zle -N up_widget
bindkey "^k" up_widget

function redo(){
	popd
} 
bindkey "^j" redo
