# .bashrc

# Special for Fedora on Macbook
# use natural scrolling
xmodmap -e "pointer = 1 2 3 5 4 7 6 8 9 10 11 12"
# disable touchpad while typing
kill $(pgrep syndaemon)
syndaemon -i .3 -t -K -R -d

# Larger bash history (default is 500)
export HISTFILESIZE=10000
export HISTSIZE=10000

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# ssh shortcuts
alias yeti='ssh bryant@yeti'
alias tiki='ssh bryant@tiki'
alias snowflake='ssh bryant@snowflake'
alias dragonfly='ssh root@dragonfly'
alias spark='ssh deploy@spark'


# git shortcuts
alias pull='git stash ; git pull --rebase origin master ; git stash pop'
alias push='git push origin master'
alias deploy='git remote | xargs -L 1 git push'
alias commit='git commit -am'
alias status='git status'


# User specific aliases and functions
export PATH=$HOME/local/bin:$PATH
export NODE_ENV=development
export PATH=$HOME/local/bin:$PATH

# Prompt
[[ -f "$HOME/.bash_prompt" ]] && source "$HOME/.bash_prompt"

# Aliases
[[ -f "$HOME/.aliases" ]] && source "$HOME/.aliases"

clear
