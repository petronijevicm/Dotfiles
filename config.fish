tmux
clear && acpi
set fish_greeting ""

export EDITOR=/usr/bin/nvim
export FZF_DEFAULT_OPTS="--layout=reverse --height 60%"

fish_vi_key_bindings

alias f="cd $HOME && clear && fzf | xargs -r $EDITOR"

alias v="nvim"
alias sv="sudo nvim"

alias .="cd .. && la"
alias c="gcc -lm -o"
alias sk="cd ~/Documents/Skola/UUP"
alias ydl="youtube-dl -f250"
alias doc="cd ~/Documents"
alias dow="cd ~/Downloads"
alias p="sudo pacman"
