# config.nu
#
# Installed by:
# version = "0.104.1"
#
# This file is used to override default Nushell settings, define
# (or import) custom commands, or run any other startup tasks.
# See https://www.nushell.sh/book/configuration.html
#
# This file is loaded after env.nu and before login.nu
#
# You can open this file in your default editor using:
# config nu
#
# See `help config nu` for more options
#
# You can remove these comments if you want or leave
# them for future reference.


#ALIASES

#alias ls = eza --color=auto --icons=auto
alias gdb = gdb --tui
alias grep = rg --color=auto
alias cat = bat
#alias cd = z
alias v = nvim
alias neofetch = fastfetch --logo arch2
alias ll = ls -a
#alias f = "$(fzf)"
alias swaylock = swaylock --color #000000
alias clock = tty-clock -sctD
#alias l = eza -lh --git --icons=auto
#alias lt = eza -lhT --icons=auto
#alias fzf = fzf --border=sharp --preview="cat {}"
#alias pp = power_optionsv2 $(echo -e "Shutdown\nReboot\nLock\nLogout" | fzf)
#alias music = mpv "$(find ~/Music/ -type f | fzf )" --loop --no-audio-display 
#alias doc = nvim $(find ~/Documents/ -type f | fzf)
#alias dotf = cd $DOTFILES
alias sudo = doas
alias notes = nvim ~/Notes/
alias pic = kitten icat --align=left
alias weather = curl wttr.in


$env.config.show_banner = false
source ~/.zoxide.nu
