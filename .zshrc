# Created by newuser for 5.9
#(cat ~/.cache/wal/sequences &)
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'


alias ls='eza --color=auto --icons=auto'
alias gdb='gdb --tui'
alias grep='rg --color=auto'
alias cat='bat'
alias cd='z'
alias v='emacs -nw'
alias neofetch='fastfetch'
alias ll='eza -lah --git --icons=auto'
alias f='"$(fzf)"'
alias swaylock='swaylock --color #000000'
alias clock='tty-clock -sctD'
alias l='eza -lh --git --icons=auto'
alias lt='eza -lhT --icons=auto'
alias fzf='fzf --border=sharp --preview="cat {}"'
alias pp='power_optionsv2 $(echo -e "Shutdown\nReboot\nLock\nLogout" | fzf)'
alias music='mpv "$(find ~/Music/ -type f | fzf )" --loop --no-audio-display '
alias doc='nvim $(find ~/Documents/ -type f | fzf)'
alias dotf='cd $DOTFILES'
alias sudo='doas'
alias notes='nvim ~/Notes/'
alias pic='kitten icat --align=left'

alias gpt='ollama run llama3.2:1b'

#RPROMPT='%F{blue}λ%f'
#RPROMPT="%F{blue}[%D %t]%f"
#PS1="%F{cyan}╔[󰣇]═[%f%F{blue}%n%f%F{white}@%f%F{cyan}%m]═[%f%F{magenta}%1~%f%F{cyan}]%f"$'\n'"%F{blue}╚[%#]═>%f "
#PS2="═[+]"

autoload -Uz vcs_info
precmd() {vcs_info}
zstyle ':vcs_indo:*' formats ' %s(%b)'


PS1="%F{cyan}%~%f"$'\n'"%F{blue}> %f"
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory

#powerline-daemon -q
#. /usr/share/powerline/bindings/zsh/powerline.zsh

source <(fzf --zsh)
eval "$(zoxide init zsh)"

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

autoload -Uz compinit
compinit

#fastfetch --config /usr/share/fastfetch/presets/examples/8.jsonc
