if status is-interactive
    # Commands to run in interactive sessions can go here
end
set PATH $HOME/.cargo/bin $PATH
starship init fish | source
alias ls="lsd"
alias la="lsd -la"
export NNN_PLUG='f:fd;o:fzopen;d:diffs;t:nmount;v:imgview;p:-plugin'
alias nnn "nnn -e"
set --export NNN_FIFO "/tmp/nnn.fifo"

export SDL_VIDEODRIVER=wayland
export _JAVA_AWT_WM_NONREPARENTING=1
export QT_QPA_PLATFORM=wayland
export XDG_SESSION_DESKTOP=sway
