if status is-interactive
    # Commands to run in interactive sessions can go here
end

fish_add_path $HOME/.cargo/bin

starship init fish | source

alias ls="lsd"
alias la="lsd -la"
alias at="alacritty-themes"
export NNN_PLUG='f:fd;o:fzopen;d:diffs;t:nmount;v:imgview;p:-plugin'
alias nnn "nnn -e"
set --export NNN_FIFO "/tmp/nnn.fifo"

fish_add_path /home/sasha/.spicetify

if set -q SWAYSOCK # sway detection 
    export (cat $HOME/.config/environment.d/sway.conf |xargs -L 1)	
end

