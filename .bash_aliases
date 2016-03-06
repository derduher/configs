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
alias gpu='git push -u origin `git rev-parse --abbrev-ref HEAD`'

# Lock the screen (when going AFK)
alias afk="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"

