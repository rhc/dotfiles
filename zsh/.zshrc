# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

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

# Uncomment the following line to disable command auto-correction.
# DISABLE_CORRECTION="true"

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
plugins=(rails zsh-syntax-highlighting)


source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/usr/local/heroku/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/ckyony/bin:/home/ckyony/.cabal/bin"
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
# export SSH_KEY_PATH="~/.ssh/dsa_id"

export PATH="$HOME/.rbenv/bin:$HOME/.gem/ruby/2.2.0/bin:$PATH"
export PATH="$HOME/dotfiles/vimonad/bin:$PATH"
eval "$(rbenv init -)"

alias cls='clear'
alias ls='ls --color=auto'
alias s='sudo shutdown -h now'
alias r='sudo reboot'
alias d='date'
alias x='exit'
alias lo='libreoffice'
alias ah='vim ~/aha/aha.adoc'
alias kpa='vim ~/aha/kpa.adoc'
alias eu='cd ~/repo/euler'
alias di='cd ~/repo/discrete-optimization'
alias migrate='rake db:migrate && rake db:test:prepare'
alias rmdir='rm -rf'
alias cdbook='cd ~/certifications/ccie/study-notes/book/'
alias cd360='cd ~/certifications/ccie/360/'
alias typist='gtypist --personal-best --word-processor --always-sure --silent --show-errors'
alias ti='~/dotfiles/bin/telnet-racks-ine'
alias beg='bundle exec guard'
alias ide='~/dotfiles/bin/ide.sh'
alias vim='gvim -v'
alias now='task due:today'

alias r1='telnet 127.0.0.1 2001'
alias r2='telnet 127.0.0.1 2002'
alias r3='telnet 127.0.0.1 2003'
alias r4='telnet 127.0.0.1 2004'
alias r5='telnet 127.0.0.1 2005'
alias r6='telnet 127.0.0.1 2006'
alias r7='telnet 127.0.0.1 2007'
alias r8='telnet 127.0.0.1 2008'
alias r9='telnet 127.0.0.1 2009'
alias r10='telnet 127.0.0.1 2010'
alias r11='telnet 127.0.0.1 2011'
alias r12='telnet 127.0.0.1 2012'
alias r13='telnet 127.0.0.1 2013'
alias r14='telnet 127.0.0.1 2014'
alias r15='telnet 127.0.0.1 2015'
alias r16='telnet 127.0.0.1 2016'
alias r17='telnet 127.0.0.1 2017'
alias r18='telnet 127.0.0.1 2018'
alias r19='telnet 127.0.0.1 2019'
alias r20='telnet 127.0.0.1 2020'

alias cdccie="cd ~/certifications/ccie/360/"
alias pac='packer -S --noedit' 
alias lab='~/bin/start-lab-session'

# rename on steroids
autoload zmv 
#export HISTSIZE=10000
#export HISTFILESIZE=1000000
#export HISTCONTROL='erasedups'
#export HISTIGNORE='cls:ls:bg:fg:s:x:r'
#export PROMPT_COMMAND="history -a"
#export CDPATH=".:~:~/certifications"
#shopt -s histappend

export GREP_OPTIONS="--color"
export EDITOR="vim"
export TERM=xterm-256color
export LANG=en_US.UTF-8
export GITHUB_USER='rhc'
export BITBUCKET_USER='ckyony'

bindkey -v
bindkey '^r' history-incremental-search-backward
bindkey  -M vicmd v edit-command-line

# Reduce the delay from the default 0.4 second to 0.1 second
# after pressing the <ESC> key
export KEYTIMEOUT=1 

export NODE_PATH=/usr/lib/node_modules
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk/
export SGML_CATALOG_FILES=/etc/xml/catalog

# improve rendering by disabling pango
export MOZ_DISABLE_PANGO=1

export PATH=$PATH:$HOME/bin
export PATH=$PATH:$HOME/repo/asciidoctor-pdf/bin:$HOME/repo/asciidoctor-fopub/

# To use Firefox from urlscan in mutt
export BROWSER=/usr/bin/firefox

#local ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ %s)"
#PROMPT='${ret_status}%{$fg_bold[green]%}%p %{$fg[cyan]%}%c %{$fg_bold[blue]%}%{$fg_bold[blue]%} % %{$reset_color%}'
# frequently used directories
setopt auto_cd
cdpath=($HOME/certifications)

# BEGIN Ruboto setup
source ~/.rubotorc
# END Ruboto setup
#
#
# # to access X selection => didnt work
# function vi-append-x-selection () { 
#   RBUFFER=$(xsel -o -p </dev/null)$RBUFFER; 
# }
# zle -N vi-append-x-selection
# bindkey -a '^x' vi-append-x-selection
# vi-yank-x-selection () { print -rn -- $CUTBUFFER | xsel -i -p; }
# zle -N vi-yank-x-selection
# bindkey -a '^Y' vi-yank-x-selection#
#
wmname LG3D
export _JAVA_AWT_WM_NONREPARENTING=1
xset -b

export INE_RACK=xrs5rack1


# to get rid of grep warnings
alias grep="/usr/bin/grep $GREP_OPTIONS"
unset GREP_OPTIONS

# TODO: detect automatically the second monitor
# set dual monitors
dual () {
    xrandr --output eDP1 --auto --primary  --output HDMI1 --left-of eDP1 --mode 1366x768
}

# set single monitor
single () {
    xrandr --output HDMI1 --off
}

# # Powerline
# if [[ -r /usr/lib/python3.4/site-packages/powerline/bindings/zsh/powerline.zsh ]]; then 
#   source /usr/lib/python3.4/site-packages/powerline/bindings/zsh/powerline.zsh 
# fi

. /etc/profile.d/vte.sh

# 
export Q_SELECT=5
