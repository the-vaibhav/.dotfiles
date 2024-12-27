# Starship prompt initialization
eval "$(starship init bash)"

# open new tab and pane in same directory
PROMPT_COMMAND=${PROMPT_COMMAND:+"$PROMPT_COMMAND; "}'printf "\e]9;9;%s\e\\" "`cygpath -w "$PWD" -C ANSI`"'

# export PS1="\n\e[0;33m  \e[0;32m\w       \u       :     \n\e[0;33m \e[0;32m  \e[0;37m"
# disables the bell sound and visual alert
bind 'set bell-style none'
bind '"\C-j":'
bind '"\C-l":'

# Different starship config. for windows terminal
if [ "$WT_SESSION" ]; then
    export STARSHIP_CONFIG=~/.config/starship-windows.toml
fi

alias ls='lsd'
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'