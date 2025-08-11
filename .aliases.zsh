##
## Aliases
##
#Neofetch
alias nf='neofetch'
alias ff='fastfetch'
alias uwu='uwufetch'
#Utilities
alias c="clear"
alias q="exit"
alias pkgcacheclean="sudo  pacman -Sc && yay -Sc"
alias pkgorphanclean="sudo pacman -Qqd | sudo pacman -Rsu -"
alias cleanram="sudo sh -c 'sync; echo 3 > /proc/sys/vm/drop_caches'"
alias mkgrub='sudo grub-mkconfig -o /boot/grub/grub.cfg'
alias mtar='tar -zcvf' # mtar <archive_compress>
alias utar='tar -zxvf' # utar <archive_decompress> <file_list>
alias z='zip -r' # z <archive_compress> <file_list>
alias uz='unzip' # uz <archive_decompress> -d <dir>
alias sr='source ~/.zshrc'
alias ..="cd .."
alias psg="ps aux | grep -v grep | grep -i -e VSZ -e" 
alias mkdir="mkdir -p"
alias fm='yazi'
alias l="ls -l"
alias la="ls -a"
alias lla="ls -la"
alias lt="ls --tree"
alias ls='eza -a --icons'
alias ll='eza -al --icons'
alias lt='eza -a --tree --level=1 --icons'
alias cat="bat --color always --plain"
alias grep='grep --color=auto'
alias mv='mv -v'
alias cp='cp -vr'
alias rm='rm -vr'
#pacman related
alias pacs="pacman -Slq | fzf -m --preview 'cat <(pacman -Si {1}) <(pacman -Fl {1} | awk \"{print \$2}\")' | xargs -ro sudo pacman -S"
alias pkglist'=pacman -Qqe |xargs > ~/pkglist.txt'
alias yays="yay -Slq | fzf -m --preview 'cat <(yay -Si {1}) <(yay -Fl {1} | awk \"{print \$2}\")' | xargs -ro  yay -S"
alias pacrm="pacman -Qq | fzf --multi --preview 'pacman -Qi {1}' | xargs -ro sudo pacman -Rns"
alias pac="sudo pacman -Q | fzf"
alias pacupd="pacman -Qu"
alias I="sudo pacman -S --noconfirm"
alias U="sudo pacman -Syu"
alias YU="yay -Syu --noconfirm --sudoloop"
alias R="sudo pacman -Rns"
alias installed="grep -i installed /var/log/pacman.log"
# vim:ft=zsh
