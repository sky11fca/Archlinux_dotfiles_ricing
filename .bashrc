#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'

alias hypr='start-hyprland'

PS1='[\u@\h \W]\$ '

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

alias ls='eza --color=auto --icons=auto'
alias gdb='gdb --tui'
alias grep='rg --color=auto'
alias cat='bat'
#alias cd='z'
alias v='nvim'
alias neofetch='fastfetch'
alias ll='eza -lah --git --icons=auto'
#alias f='"$(fzf)"'
#alias swaylock='swaylock --color #000000'
alias clock='tty-clock -sctD'
alias l='eza -lh --git --icons=auto'
alias lst='eza -lhT --icons=auto'
alias fzf='fzf --border=sharp --preview="cat {}"'
#alias pp='power_optionsv2 $(echo -e "Shutdown\nReboot\nLock\nLogout" | fzf)'
#alias music='mpv "$(find ~/Music/ -type f | fzf )" --loop --no-audio-display '
#alias doc='nvim $(find ~/Documents/ -type f | fzf)'
alias dotf='cd $DOTFILES'
alias sudo='doas'
#alias notes='nvim ~/Notes/'
alias pic='kitten icat --align=left'
alias weather='curl wttr.in'

eval "$(zoxide init --cmd cd bash)"

eval "$(starship init bash)"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/mrbogdanovich/google-cloud-sdk/path.bash.inc' ]; then . '/home/mrbogdanovich/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/mrbogdanovich/google-cloud-sdk/completion.bash.inc' ]; then . '/home/mrbogdanovich/google-cloud-sdk/completion.bash.inc'; fi
