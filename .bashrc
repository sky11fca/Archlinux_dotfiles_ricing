#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#[[ -r "/usr/share/z/z.sh" ]] && source /usr/share/z/z.sh

export DOTFILES="$HOME/dotfiles"

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias cat='cat'
alias cd='cd'
alias v='nvim'
alias neofetch='fastfetch'
alias ll='ls -lah'
alias sx='XDG_SESSION_TYPE=x11 startx'
#alias l='eza -la'
alias lt='eza -lT --icons=always'
alias fzf='fzf --border=sharp --preview="cat {}"'
alias pp='power_optionsv2 $(echo -e "Shutdown\nReboot\nLock\nLogout" | fzf)'
alias music='mpv "$(find ~/Music/ -type f | fzf )" --loop --no-audio-display '
alias doc='nvim $(find ~/Documents/ -type f | fzf)'
alias dotf='cd $DOTFILES'

PS1="\[\033[0;34m\]╔[\[\033[1;36m\]󰣇\[\033[0;34m\]]═[\[\033[1;34m\]\u\[\033[0;37m\]@\[\033[1;36m\]\h\[\033[0;34m\]]═[\[\033[35m\]\w\[\033[34m\]]\n\[\033[36m\]╚[\$]═>\[\033[0;37m\] "
PS2="═[+]"

export EDITOR=nvim
export MANPAGER='nvim +Man!'

RANGER_DEVICONS_SEPARATOR=" ~> "


# Created by `pipx` on 2024-08-26 06:23:14
export PATH="$PATH:/home/skullface/.local/bin:$HOME/bin"
export QT_QPA_PLATFORMTHEME=kde

#export QT_QPA_PLATFORMTHEME=qt6ct

eval "$(fzf --bash)"
eval "$(zoxide init bash)"

export PATH=$PATH:/home/skullface/.spicetify:~/.emacs.d/bin
