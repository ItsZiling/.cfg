if status is-interactive
    # Commands to run in interactive sessions can go here
end

alias cfg='/usr/bin/git --git-dir=$HOME/.cfg --work-tree=$HOME'
# starship init fish | source # decided to go with configuring fish instead

if type -q opam 
    eval (opam env --switch=5.2.0)
end

set fish_greeting
