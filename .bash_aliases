alias ..='cd ..'
alias ...='cd ../..'
alias ls='ls -G'
alias ll='ls -alFh'
alias la='ls -A'
alias l='ls -CF'
# List only directories
alias lsd='ls -l ${colorflag} | grep "^d"'

alias grep='grep -nEI'

alias gs='git status'
alias gl='git log'
alias gd='git diff -w -b'
