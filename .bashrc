#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
if [[ $TERM = "st-256color" ]]; then
	transset-df "0.85" --id "$WINDOWID" >/dev/null
fi
#Hebrew
set meta-flag On
set convert-meta Off
set output-meta On
# set default editor
export EDITOR="nvim"

#change directory colors
export LS_COLORS=$LS_COLORS:'di=0;35:fi=92:ln=36:ex=96' ;

alias ls='ls --color'
# PS1='[\u@\h \W]\$ '
#alias ptop="ps -u $USER -o pid,%mem,%cpu,comm | sort -b -k2 -r | sed -n '1!p' | dmenu -i -l 15 | awk '{print $2}'"
alias config='/usr/bin/git --git-dir=$HOME/dotfiles --work-tree=$HOME'
alias news="newsboat"
alias bye="sudo shutdown -h now"
alias lutris="devour lutris"
alias booty="sudo reboot -h now"
alias pdf="zathura"
alias code="vscode"
alias vim="nvim"
alias ll="ls -la"
alias ff="devour firefox"
alias yta="yt-dlp -x -f bestaudio/best"
alias findvid="ytfzf -t"
alias findody="ytfzf -cO"
alias copyvid="ytfzf -L"
alias gimp="devour gimp"
alias chromium="devour chromium"
alias web="devour chromium"
alias sxiv="devour sxiv"

# alias web="chromium& && disown; exit" now its a bashscript
export PATH="$PATH:/home/breini/.local/bin"

#Ordner zuruckgehen leicht gemacht
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."
alias .......="cd ../../../../../.."
alias ........="cd ../../../../../../.."
alias .........="cd ../../../../../../../.."
alias ..........="cd ../../../../../../../../.."
alias ...........="cd ../../../../../../../../../.."
alias ............="cd ../../../../../../../../../../.."
alias .............="cd ../../../../../../../../../../../.."

#Ohne cd in directory wechseln
shopt -s autocd

#ohne startx xfce starten
if [[ "$(tty)" = "/dev/tty1" ]]; then
	prgep startxfce4 || startx
fi

#bg farbe von dir weg
LS_COLORS=$LS_COLORS:'ow=1;34:' ; export LS_COLORS


if [[ $(id -u) -eq 0 ]];then
    # ps1 for root user
    export PS1='👿 [\u@\h \W]\$ '
else
    # ps1 for normal user
    export PS1='\[\033[31m\][👽\[\033[36m\]\u\[\033[32m\]@\[\033[33m\]\h \[\033[35m\]\W]\$ \[\033[00m'
fi
