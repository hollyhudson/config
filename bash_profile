#bin/bash
# Last updated by holly 21 nov 2018
#
# This file is for configuring the interactive shell (when a human is using
# the command line, as opposed to a program running an automated set of
# commands).  Aliases for commands and things that make the shell
# pretty go here, not in .bashrc.  
#
# This file sources .bashrc, but .bashrc does not source this file.


# if .bashrc exists, source it
if [ -f ~/.bashrc ]; then
	source ~/.bashrc
fi

#########################################################################
# Path configuration
#########################################################################

# PATH is set in .bashrc, other path stuff is here
export MANPATH="/usr/man:/usr/local/man:/opt/local/man:$MANPATH"

#########################################################################
# Editing and viewing files
#########################################################################

# Basic behavior and interaction configuration
export EDITOR=vi
export PAGER=less
export LESS="-d -f -X -R"

#########################################################################
# Behavior on the command line
#########################################################################

# use vi for editing on the command line
set -o vi

# Makes your backspace key work like a backspace key
stty erase ^? 

# Turn on noclobber, so you won't accidently overwrite existing files
# when using redirects (eg. cat "some stuff" > myImportantFile won't work)
set -o noclobber

#########################################################################
# Aliases
#########################################################################

# G is for colored output on macOS
alias ls="ls -G" # for mac
# alias ls='ls --color' # for linux


# Configure the colors ls uses.  See man ls to see what the setting mean
export LSCOLORS="Exfxcxdxbxegedabagacad"

# F: with symbols, l: long, a: all, including dotfiles, h: human-readable units
alias ll="ls -FlahG" 

alias vi="/usr/bin/vi"
alias timenyc="TZ=America/New_York date"
alias timeams="TZ=Europe/Amsterdam date"

alias trans='trans -e "deepl"'

#########################################################################
# Git configuration
#########################################################################

alias s="git status"

# for git prompt, first put git-prompt.sh in your home dir:
# https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh
# must have \$(__git_ps1 ' (%s)') in your PS1, the \ is important!
source ~/.git-prompt.sh

#########################################################################
# Prompt
#########################################################################

# The beginning is to tell iterm2 to put the working directory up there
#TITLEBAR='\[\033]0;\h:\w\007\]' # \h = hostname \W = working directory

# this is a plain, simple prompt with just hostname:working_dir:
#export PS1="\h:\w: "

# slightly more complex prompt with colors and a git info
export PS1="${TITLEBAR}\[$Blue\]\h:\w:\[$Color_Off\]\$(__git_ps1 ' (%s)') "

# prompt with unicode emojis in it,
# it's pretty but it can sometimes cause issues with line wrapping
export PS1="${TITLEBAR}\[$Blue\]\h\[$Cyan\]$U_FLOWER \[$Blue\]\w$U_FISH \[$Color_Off\]\$(__git_ps1 ' (%s)') "

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

#STARTCOLOR='\[\e[0;35m\]'
#ENDCOLOR="\[\e[0m\]"
#export PS1="$STARTCOLOR\h:\w: $ENDCOLOR"

#########################################################################
# Greeting
#########################################################################

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
