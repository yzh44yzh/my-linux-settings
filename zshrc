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
# RPROMPT='%F{green}:)%f'
RPROMPT=''

# working with file system
alias ls='ls --color -CF'
alias ll='ls -lh'
alias la='ls -A'
alias rm='rm -i'
alias rmf='rm -rf'
alias cp='cp -ir'
alias mv='mv -i'
alias mkdir='mkdir -p'

# working with git
alias gs='git status'
alias gd='git diff --word-diff'
alias ga='git add'
alias gc='git commit -m '
alias gca='git commit -a -m '
alias gl='git log --oneline --decorate'
alias gp='git push origin '
alias gu='git pull origin '
alias gpush='git push origin master'
alias gpull='git pull origin master'

alias pm='python manage.py'
alias mp=mplayer
alias kill-it-with-fire='kill -9'

alias staging='ssh -i .ssh/wg_rsa wgnc-wgt1@ws-ovz-7-171'

alias mm='make quick-compile'
alias ss='make start'
alias rr='make run'

alias pm='python manage.py'
alias py3=python3

PATH=/usr/local/pgsql/bin/:$HOME/bin:$HOME/.opam/system/bin:$PATH
export PATH

export EDITOR="emacs -nw"
export LD_LIBRARY_PATH=/usr/local/lib/

export WORKON_HOME=~/dev/spa_env
source /usr/local/bin/virtualenvwrapper.sh

# OPAM configuration
. /home/y_zhloba/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true
