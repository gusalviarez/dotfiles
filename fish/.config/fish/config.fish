if status is-interactive
    starship init fish | source
    zoxide init fish | source
end

set -U fish_greeting

alias es='setxkbmap -layout es'
alias us='setxkbmap -layout us'
