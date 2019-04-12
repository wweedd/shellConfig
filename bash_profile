
# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
#export PATH="/usr/local/bin"
export PATH="$PATH:/Library/TeX/texbin"

export KEVALA_API_EMAIL="wdu2@andrew.cmu.edu"
export KEVALA_API_PASSWORD="Duwei1025"

PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
#export PYTHONPATH=/usr/local/lib/python2.7/site-packages:$PYTHONPATH

# Some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias llt='ls -lt'
alias g++='g++ --std=c++11'

function cd {
    builtin cd "$@" && ls 
    }

#customize
bind '"\e[B": history-search-forward'
bind '"\e[A": history-search-backward'

# run from waynedu directory



#export TERM=xterm-color
export PS1="\[\033[0;94m\]\W > \[\033[0;97m\]"
export CLICOLOR=1
export LSCOLORS=CxFxCxDxBxegedabagaced

# Setup julia
alias julia="/Applications/Julia-1.0.app/Contents/Resources/julia/bin/julia"

# Ignore duplicate lines
export HISTCONTROL=ignoredups:erasedups
# When the shell exits, append to the history file 
#  instead of overwriting it
shopt -s histappend
# After each command, append to the history file 
#  and reread it
export PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}history -a; history -c; history -r"

alias vi=/usr/local/bin/vim
alias vim=/usr/local/bin/nvim


# to fix update_terminal_cwd 
update_terminal_cwd() {
    # Identify the directory using a "file:" scheme URL,
    # including the host name to disambiguate local vs.
    # remote connections. Percent-escape spaces.
    local SEARCH=' '
    local REPLACE='%20'
    local PWD_URL="file://$HOSTNAME${PWD//$SEARCH/$REPLACE}"
    printf '\e]7;%s\a' "$PWD_URL"
}


source "$HOME/.vim/plugged/gruvbox/gruvbox_256palette.sh"
