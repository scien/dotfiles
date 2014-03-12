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

# Exports
export NODE_ENV=development
export PATH=$HOME/local/bin:$PATH

# Don't let Fedora waste my time on a typo
unset command_not_found_handle

# Prompt
[[ -f "$HOME/.bash_prompt" ]] && source "$HOME/.bash_prompt"

# Aliases
[[ -f "$HOME/.aliases" ]] && source "$HOME/.aliases"

clear
