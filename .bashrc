# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoredups:ignorespace


# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=100000
HISTFILESIZE=200000
PATH="$PATH:/var/lib/gems/1.8/bin"
# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi
b='\[\033['

black="${b}0;30m\]" # Black - Regular
red="${b}0;31m\]" # Red
txtgrn="${b}0;32m\]" # Green
txtylw="${b}0;33m\]" # Yellow
txtblu="${b}0;34m\]" # Blue
txtpur="${b}0;35m\]" # Purple
txtcyn="${b}0;36m\]" # Cyan
txtwht="${b}0;37m\]" # White
bldblk="${b}1;30m\]" # Black - Bold
bldred="${b}1;31m\]" # Red
bldgrn="${b}1;32m\]" # Green
bldylw="${b}1;33m\]" # Yellow
bldblu="${b}1;34m\]" # Blue
bldpur="${b}1;35m\]" # Purple
bldcyn="${b}1;36m\]" # Cyan
bldwht="${b}1;37m\]" # White
unkblk="${b}4;30m\]" # Black - Underline
undred="${b}4;31m\]" # Red
undgrn="${b}4;32m\]" # Green
undylw="${b}4;33m\]" # Yellow
undblu="${b}4;34m\]" # Blue
undpur="${b}4;35m\]" # Purple
undcyn="${b}4;36m\]" # Cyan
undwht="${b}4;37m\]" # White
bakblk="${b}40m\]"   # Black - Background
bakred="${b}41m\]"   # Red
badgrn="${b}42m\]"   # Green
bakylw="${b}43m\]"   # Yellow
bakblu="${b}44m\]"   # Blue
bakpur="${b}45m\]"   # Purple
bakcyn="${b}46m\]"   # Cyan
bakwht="${b}47m\]"   # White
txtrst="${b}0m\]"    # Text Reset
smiley="\$([[ \$? -eq 0 ]] && echo \"${txtgrn}☺$txtrst\" || echo \"${red}☠$txtrst\")"
# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi
color_prompt=yes
if [ "$color_prompt" = yes ]; then
    PS1="${debian_chroot:+($debian_chroot)}$bldgrn\u@\h$txtrst:$bldblu\w$txtrst\n$smiley "
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi
if [ -e /usr/share/terminfo/x/xterm-256color ]; then
        export TERM='xterm-256color'
else
        export TERM='xterm-color'
fi
export PATH=${PATH}:/Users/pweygand/Downloads/adt-bundle-mac/sdk/platform-tools:/Users/pweygand/Downloads/adt-bundle-mac/sdk/tools
# some more ls aliases
alias ll='ls -alFh'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

# append to the history file, don't overwrite it
shopt -s histappend
# append to the history file after each command
PROMPT_COMMAND="history -a"
export EDITOR='vim'
