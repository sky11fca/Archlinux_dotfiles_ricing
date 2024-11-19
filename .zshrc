# Created by newuser for 5.9

alias ls='eza --color=auto'
alias grep='grep --color=auto'
alias cat='bat'
alias cd='z'
alias v='nvim'
alias nf='fastfetch --logo arch2'
alias ll='eza -lah'
alias f='"$(fzf)"'
alias swaylock='swaylock --color #000000'
#alias l='eza -la'
alias lt='eza -lT'
alias fzf='fzf --border=sharp --preview="cat {}"'
alias pp='power_optionsv2 $(echo -e "Shutdown\nReboot\nLock\nLogout" | fzf)'
alias music='mpv "$(find ~/Music/ -type f | fzf )" --loop --no-audio-display '
alias doc='nvim $(find ~/Documents/ -type f | fzf)'
alias dotf='cd $DOTFILES'

alias notes='nvim ~/Notes/'

RPROMPT="%F{blue}[%D %t]%f"
PS1="%F{cyan}╔[󰣇]═[%f%F{blue}%n%f%F{white}@%f%F{cyan}%m]═[%f%F{magenta}%1~%f%F{cyan}]%f"$'\n'"%F{blue}╚[%#]═>%f "
PS2="═[+]"

#powerline-daemon -q
#. /usr/share/powerline/bindings/zsh/powerline.zsh

source <(fzf --zsh)
eval "$(zoxide init zsh)"
