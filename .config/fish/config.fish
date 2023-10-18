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
fish_add_path /home/sasha/.local/bin 
if set -q SWAYSOCK # sway detection 
    export (cat $HOME/.config/environment.d/sway.conf |xargs -L 1)	
end

set -Ux XDG_DATA_HOME $HOME/.local/share
set -Ux XDG_CONFIG_HOME $HOME/.config 
set -Ux XDG_STATE_HOME $HOME/.local/state
set -Ux XDG_CACHE_HOME $HOME/.cache
set -Ux RUSTUP_HOME $HOME/.rustup

alias wget="wget --hsts-file=$XDG_DATA_HOME/wget-hsts"

set -Ux HISTFILE $XDG_STATE_HOME/bash/history
set -Ux CARGO_HOME $HOME/.cargo
set -Ux LESSHISTFILE $XDG_CACHE_HOME/less/history
alias nvidia-settings="--config=$XDG_CONFIG_HOME/nvidia/settings"
alias bat "bat --color=never --wrap=never"
