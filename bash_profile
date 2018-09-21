#/bin/bash
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
export LESS="-d -f -X -R"
# use vi for editing on the command line
set -o vi

# aliases for commands
#
# G for Syntax highlighting
alias ls="ls -G"
alias ll="ls -FlahG"
alias s="git status"
saynl() {
	trans \
		en:nl \
		-show-original n \
		-show-original-dictionary n \
		-show-dictionary n \
		-show-languages n \
		-show-alternatives n \
		-show-prompt-message n \
		--no-ansi  \
		"$*" \
		| say -v Claire;
}

# alias ls='ls --color' # for linux

alias vi="/usr/bin/vi"
alias timenyc="TZ=America/New_York date"
alias timeams="TZ=Europe/Amsterdam date"

# Configure the colors ls uses.  See man ls to see what the setting mean
export LSCOLORS="Exfxcxdxbxegedabagacad"

# for git prompt
# https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh
# must have \$(__git_ps1 ' (%s)') in your PS1, the \ is important!
source ~/.git-prompt.sh

# Some kewl stuff
# to get the codes for emojis:
# echo -n [paste emoji here] | xxd -g1
source ~/config/colors_for_bash
U_FLOWER="\342\235\200"  
U_SPLAT="\342\234\273"  
U_BIGSPLAT="\342\235\211" 
U_BUG="\360\237\220\236" 
U_FISH="\360\237\220\237"
U_TULIP="\360\237\214" 
U_SAKURA="\360\237\214"
U_SPROUT="\xf0\x9f\x8c\xb1"
U_WHEAT="\xf0\x9f\x8c\xbe"
U_HERB="\xf0\x9f\x8c\xbf"
U_TEA="\xf0\x9f\x8d\xb5"

#export PS1="\h:\w: "

#STARTCOLOR='\[\e[0;35m\]'
#ENDCOLOR="\[\e[0m\]"
#export PS1="$STARTCOLOR\h:\w: $ENDCOLOR"

# The beginning is to tell iterm2 to put the working directory up thereL
TITLEBAR='\[\033]0;\h:\w\007\]' # \h = hostname \W = working directory
export PS1="${TITLEBAR}\[$Blue\]\h:\w:\[$Color_Off\]\$(__git_ps1 ' (%s)') "
#export PS1="${TITLEBAR}\[$Blue\]\h\[$Cyan\]$FANCY_FLOWER \[$Blue\]\w$FANCY_FISH \[$Color_Off\]\$(__git_ps1 ' (%s)') "

# for pyenv, which manages multiple installs of python
# https://github.com/yyuu/pyenv#homebrew-on-mac-os-x
# eval "$(pyenv init -)"

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
# if you can't find hass (home assistant) it's here:
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH

# Greeting
echo ""
echo ""
echo ""
printf "                      Hello human!\n"
echo ""
printf "$U_TEA \n"
printf "  it's $(date +"%H:%M"). how are you?\n"
printf "  have you...                 \n"
printf "   - taken a break lately?         \n"
printf "   - stood and stretched?         \n"
printf "   - done some meditation?       \n"
printf "   - fixed some tea?          \n"
printf "                       have a lovely day\n"
echo ""
printf "$U_SPROUT  $U_SPROUT  $U_SPROUT      $U_WHEAT  $U_WHEAT     $U_HERB  $U_HERB  $U_HERB\n"
echo ""
