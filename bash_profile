#!/bin/bash
# Last updated by holly 15 feb 2015
#
# This file is for configuring the interactive shell (when a human is using
# the command line, as opposed to a program running an automated set of
# commands).  Aliases for commands and things that make the shell
# pretty go here, not in .bashrc.  This file sources .bashrc, but
# .bashrc does not source this file.

if [ -f ~/.bashrc ]; then
	source ~/.bashrc
fi

# Turn on noclobber
set -o noclobber

# Makes your backspace key work like a backspace key
stty erase ^? 

# Path configuration
export MANPATH="/usr/man:/usr/local/man:/opt/local/man:$MANPATH"
# PATH is set in .bashrc

# Basic behavior and interaction configuration
export EDITOR=vi
export PAGER=less
export LESS="-d -f -X"
# use vi for editing on the command line
set -o vi

# aliases for commands
#
# puts slashes after directory names
alias ls="/bin/ls -F"
alias vi="/usr/bin/vi"

# Configure the colors ls uses.  See man ls to see what the setting mean
export LSCOLORS="Exfxcxdxbxegedabagacad"

# Syntax highlighting
alias ls='ls --color'
alias t='todotxt'

# Set the prompt on an interactive shell
source ~/config/colors_for_bash
FANCY_FLOWER="\342\235\200"  # fancy unicode character for the prompt
FANCY_SPLAT="\342\234\273"  # fancy unicode character for the prompt
FANCY_BIGSPLAT="\342\235\211"  # fancy unicode character for the prompt
FANCY_BUG="\360\237\220\236"  # fancy unicode character for the prompt
FANCY_FISH="\360\237\220\237"  # fancy unicode character for the prompt
FANCY_TULIP="\360\237\214"  # fancy unicode character for the prompt
FANCY_SAKURA="\360\237\214"  # fancy unicode character for the prompt

#export PS1="\h:\w: "

#STARTCOLOR='\[\e[0;35m\]'
#ENDCOLOR="\[\e[0m\]"
#export PS1="$STARTCOLOR\h:\w: $ENDCOLOR"

export PS1="\[$Blue\]\h\[$Cyan\]$FANCY_FLOWER \[$Blue\]\w$FANCY_FISH \[$Color_Off\] "

# for mutt, should help maintain transparency of mutt's windows
export COLORFGBG="default;default"

alias mutt='mutt -F .muttrc_home'
alias work='mutt -F .muttrc_work'

# MacPorts wanted this
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
