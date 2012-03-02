setxkbmap us,ru -option grp:shift_caps_switch

# Set up the prompt

autoload -Uz promptinit
promptinit
prompt walters

# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

PROMPT='%F{green}%B%n%b%f %F{blue}%~ $%f '
# PROMPT2='%i%U> '
# RPROMPT='%K{red}%T%k'
RPROMPT='%F{green}:)%f'

# working with file system
alias ls='ls --color -CF'
alias ll='ls -lh'
alias la='ls -A'
alias rm='rm -i'
alias rmf='rm -rf'
alias cp='cp -ir'
alias mv='mv -i'
alias mkdir='mkdir -p'

# working with subversion
alias ss='svn status'
alias su='svn update --set-depth=infinity'
alias sc='svn commit -m '
alias si='svn propedit svn:ignore '
alias sd='svn diff -r HEAD '
alias sr='svn revert --depth infinity '
alias srw='svn resolve --accept=working '
alias sm='svn merge '
alias check='find . -maxdepth 1 | xargs svn status'
alias rmsvn='find . -name .svn | xargs rm -rf'

# working with git
alias gs='git status'
alias ga='git add'
alias gc='git commit -m '
alias gca='git commit -a -m '
alias gp='git push origin '
alias gu='git pull origin '
alias gpush='git push origin master'


PATH=$PATH:$HOME/bin
PATH=$PATH:$HOME/dev/apache-maven-3.0.3/bin
export PATH

export IDEA_JDK=/usr/java/latest/
export JDK_HOME=/usr/java/latest/
export JAVA_HOME=/usr/java/latest/

export EDITOR="emacs -nw"
export SVN_EDITOR="emacs -nw"

export SVNL=svn://192.168.0.202
export SVNR=svn://81.25.45.63

