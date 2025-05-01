if status is-interactive
    # Commands to run in interactive sessions can go here
end

if uwsm check may-start
    exec uwsm start hyprland.desktop
end

set -U fish_greeting ""

# function code
#     set location "$PWD/$argv"
#     open -n -b "com.microsoft.VSCode" --args $location
# end

if set -q ZELLIJ
else
    zellij
end

zoxide init fish | source

starship init fish | source

alias ls="exa"

alias pn=pnpm

alias :q="exit"

alias discord="discord --enable-features=WaylandWindowDecorations --ozone-platform-hint=auto"

# alias cd="z"
# pnpm
set -gx PNPM_HOME "/home/austin/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
    set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

#set -x GOPATH (go env GOPATH)
#set -x PATH $PATH /usr/local/go/bin (go env GOPATH)/bin

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

# grim
set --export GRIM_DEFAULT_DIR "$HOME/Pictures"
