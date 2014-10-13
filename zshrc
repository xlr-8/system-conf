#!/bin/zsh #

######################################################################
###
### Options (man zshoptions)
###
######################################################################

export EDITOR='vim'
export HISTFILE="$HOME/.history"
export LOGCHECK='60'
export MAILCHECK=0
export PAGER='most'

# For Java Uses
export M2_HOME="/usr/local/apache-maven/apache-maven-3.0.2"
export M2="$M2_HOME/bin"
export PATH="$M2:$PATH"
export JAVA_HOME="/usr/lib/jvm/java-6-openjdk-amd64"
export JAVA="$JAVA_HOME/bin"
export PATH="$JAVA:$PATH"
export TERM="xterm-256color"

######################################################################
###
### Options (man zshoptions)
###
######################################################################

######################################################################
##
## History
##
######################################################################

# append_history : add current history at the end of the older
# inc_append_history : add each command to the HISTFILE
# hist_verify : when use !, only show it without execution
# ?
# hist_find_no_dups : don't print duplicate commande
#
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.history
setopt append_history
setopt inc_append_history
setopt extended_history
setopt hist_reduce_blanks
setopt hist_verify
setopt hist_find_no_dups

######################################################################
##
## Changing Directories
##
######################################################################

# If a command  is issued that can't be executed  as a normal command,
# and the command  is the name of a directory,  perform the cd command
# to that directory.
setopt AUTO_CD

######################################################################
##
## Completion
##
######################################################################

# If unset, key  functions that list completions try  to return to the
# last prompt if given a  numeric argument. If set these functions try
# to return to the last prompt if given no numeric argument.
setopt ALWAYS_LAST_PROMPT

# If a  completion is performed with  the cursor within a  word, and a
# full completion is  inserted, the cursor is moved to  the end of the
# word.  That is, the cursor is moved to the end of the word if either
# a single match is inserted or menu completion is performed.
setopt ALWAYS_TO_END

# Automatically list choices on an ambiguous completion.
setopt AUTO_LIST

# Automatically  use  menu  completion  after the  second  consecutive
# request  for  completion,  for  example  by  pressing  the  tab  key
# repeatedly. This option is overridden by MENU_COMPLETE.
setopt AUTO_MENU

# If  a  parameter  is  completed  whose  content is  the  name  of  a
# directory, then add a trailing slash instead of a space.
setopt AUTO_PARAM_SLASH

# Prevents  aliases   on  the  command  line   from  being  internally
# substituted before  completion is attempted.  The effect  is to make
# the alias a distinct command for completion purposes.
setopt COMPLETE_ALIASES

# If unset, the cursor is set to  the end of the word if completion is
# started. Otherwise it  stays there and completion is  done from both
# ends.
setopt COMPLETE_IN_WORD

# Whenever  a command completion  is attempted,  make sure  the entire
# command  path is  hashed  first.  This  makes  the first  completion
# slower.
setopt HASH_LIST_ALL

# This option works when AUTO_LIST  or BASH_AUTO_LIST is also set.  If
# there is an  unambiguous prefix to insert on  the command line, that
# is done without  a completion list being displayed;  in other words,
# auto-listing  behaviour  only  takes  place when  nothing  would  be
# inserted.  In the  case of BASH_AUTO_LIST, this means  that the list
# will be delayed to the third call of the function.
setopt LIST_AMBIGUOUS

# Beep on  an ambiguous completion.  More accurately,  this forces the
# completion widgets to return status  1 on an ambiguous com- pletion,
# which causes the shell to beep  if the option BEEP is also set; this
# may be modified if completion is called from a user-defined widget.
unsetopt LIST_BEEP

# When listing files  that are possible completions, show  the type of
# each file with a trailing identifying mark.
setopt LIST_TYPES

######################################################################
##
## Expansion and Globbing
##
######################################################################

# Nothing !

######################################################################
##
## History
##
######################################################################

# Beep when an  attempt is made to access a  history entry which isn't
# there.
unsetopt HIST_BEEP

######################################################################
##
## Initialisation
##
######################################################################

# All parameters subsequently defined are automatically exported.
unsetopt ALL_EXPORT

# If  this   option  is   unset,  the  startup   files  /etc/zprofile,
# /etc/zshrc, /etc/zlogin and /etc/zlogout will not be run.  It can be
# disabled and re-enabled at  any time, including inside local startup
# files (.zshrc, etc.).
unsetopt GLOBAL_RCS

######################################################################
##
## Input/Output
##
######################################################################

# Expand aliases.
setopt ALIASES

# Try  to correct  the  spelling  of commands.   Note  that, when  the
# HASH_LIST_ALL option is not set or when some directories in the path
# are not readable, this may  falsely report spelling errors the first
# time some commands are used.
setopt CORRECT

# Try to correct the spelling of all arguments in a line.
setopt CORRECT_ALL

# Allow comments even in interactive shells.
setopt INTERACTIVE_COMMENTS

# Note the  location of  each command the  first time it  is executed.
# Subsequent  invocations  of the  same  command  will  use the  saved
# location, avoiding a path search.   If this option is unset, no path
# hashing  is done  at all.   However, when  CORRECT is  set, commands
# whose names  do not appear in  the functions or  aliases hash tables
# are hashed in order to avoid reporting them as spelling errors.
setopt HASH_CMDS

# Whenever a command name is hashed, hash the directory containing it,
# as well as  all directories that occur earlier in  the path.  Has no
# effect if neither HASH_CMDS nor CORRECT is set.
setopt HASH_DIRS

# Print a warning  message if a mail file has  been accessed since the
# shell last checked.
# unsetopt MAIL_WARNING

# Do not query the user before executing `rm *' or `rm path/*'.
# setopt RM_STAR_SILENT

######################################################################
##
## Job Control
##
######################################################################

# With this  option set,  stopped jobs that  are removed from  the job
# table with the disown builtin  command are automatically sent a CONT
# signal to make them running.
setopt AUTO_CONTINUE

# Treat single word simple  commands without redirection as candidates
# for resumption of an existing job.
setopt AUTO_RESUME

# Run all background jobs at a  lower priority.  This option is set by
# default.
setopt BG_NICE

# Send the HUP signal to running jobs when the shell exits.
unsetopt HUP

# List jobs in the long format by default.
setopt LONG_LIST_JOBS

######################################################################
##
## Prompting
##
######################################################################

# Remove any right prompt from  display when accepting a command line.
# This may be useful with terminals with other cut/paste methods.
setopt TRANSIENT_RPROMPT

######################################################################
##
## Scripts and Functions
##
######################################################################

# Output  hexadecimal numbers in  the standard  C format,  for example
# `0xFF' instead of the usual  `16#FF'.  If the option OCTAL_ZEROES is
# also  set (it  is not  by default),  octal numbers  will  be treated
# similarly and hence appear as  `077' instead of `8#77'.  This option
# has no effect on the choice of the output base, nor on the output of
# bases  other than hexadecimal  and octal.   Note that  these formats
# will be understood on input irrespective of the setting of C_BASES.
setopt C_BASES

# When  executing  a shell  function  or  sourcing  a script,  set  $0
# temporarily to the name of the function/script.
setopt FUNCTION_ARGZERO

######################################################################
##
## Shell Emulation
##
######################################################################

# Make the echo builtin compatible with the BSD echo(1) command.  This
# disables backslashed escape sequences  in echo strings unless the -e
# option is specified.
setopt BSD_ECHO

######################################################################
##
## Shell State
##
######################################################################

# Nothing !

######################################################################
##
## Zle
##
######################################################################

# Beep on error in ZLE.
unsetopt BEEP

# If ZLE is  loaded, turning on this option  has the equivalent effect
# of `bindkey -e'.   In addition, the VI option  is unset.  Turning it
# off has no effect.  The  option setting is not guaranteed to reflect
# the  current keymap.   This  option is  provided for  compatibility;
# bindkey is the recommended interface.
setopt EMACS

# Use  the zsh  line editor.   Set  by default  in interactive  shells
# connected to a terminal.
setopt ZLE




######################################################################
###
### Builtins (man zshbuiltins)
###
######################################################################

# Alias
alias c='clear'
alias cd='setprompt; cd'
alias cat='cat -v'
alias cp='cp -v'
alias df='df -h'
alias du='du -h'
alias j='jobs'
alias l='ls'
alias ls='ls -hF --color=auto'
alias ll='ls -lF --color=auto'
alias la='ls -hla --color=auto'
alias mv='mv -v'
alias new='terminator &'
alias reload=". ${HOME}/.zshrc"
alias rm='rm -v'
alias root='su -'
alias sudo='nocorrect sudo'
alias x='exit'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# eNovance
alias fwup='OLD=$(pwd) ; cd /home/ugo/Documents/git/firewall; for i in $(ls /home/ugo/Documents/git/firewall); do cd $i && (echo -ne "$i" | sed "s/\//: /") && git pull && cd ../; done; cd $OLD'
alias s='ssh -A'
alias ssh='ssh -A'
alias querydns="ssh nse1.enovance.com /root/bin/querydns -s $@"
alias tint='ping -w 3 google.com > /dev/null && echo -e "[ \e[0;32mOK\e[0;0m ]" || echo -e "[ \e[0;31mKO\e[0;0m ]"'

# programming
alias cc='gcc -W -Wall -ansi -pedantic'
alias gcc='gcc -W -Wall -ansi -pedantic'
alias vg='valgrind --leak-check=yes --show-reachable=yes'
alias mgrep='grep --color -inR'

# hardware:
alias tchou='sudo shutdown -h now'
alias reboot='sudo shutdown -r now'
alias US='setxkbmap us_intl'
alias FR='setxkbmap fr'

######################################################################
###
### Git eNovance Configuration
###
######################################################################

DEBFULLNAME="Hugo Rosnet"; export DEBFULLNAME
DEBEMAIL="hugo.rosnet@enovance.com"; export DEBEMAIL
export QUILT_PATCHES=debian/patches
export QUILT_REFRESH_ARGS="-p ab --no-timestamps --no-index"
alias lintiann='lintian -IviE --display-experimental --color auto --show-overrides --checksums'
alias uscann='uscan --no-symlink --verbose --no-download'


######################################################################
###
### Zle (man zshzle)
###
######################################################################

# Selects keymap `emacs', and also links it to `main'.
bindkey -e
bindkey ";5D" backward-word
bindkey ";5C" forward-word
bindkey "\e[3~" delete-char

######################################################################
###
### Modules (man zshmodules)
###
######################################################################

# Nothing !
# zmodload zsh/$module




######################################################################
###
### Contrib (man zshcontrib)
###
######################################################################

# Nothing !
autoload -Uz compinit
compinit

# This is used to auto-complete the SSH known host
zstyle -e ':completion::*:hosts' hosts 'reply=($(sed -e "/^#/d" -e "s/ .*\$//" -e "s/,/ /g" /etc/ssh_known_hosts(N) ~/.ssh/known_hosts(N) 2>/dev/null | xargs) $(grep \^Host ~/.ssh/config(N) | cut -f2 -d\  2>/dev/null | xargs))'


######################################################################
###
### Usefull (personnal) functions
###
######################################################################

clean()
{
    SEARCH='.'
    if [ ${1} ]
    then
        SEARCH=${1}
    fi
    find ${SEARCH} \( -name "*~" -or -name ".*~" \) -exec rm -fv {} \;
}

setenv()
{
    typeset -x "${1}${1:+=}${(@)argv[2,$#]}"
}

######################################################################
###
### Prompt system for school and home compatibility.
###
######################################################################
setprompt()
{
    CL_NORMAL=$'%{\e[0m%}'          # normal
    CL_GREY=$'%{\e[0;30m%}'         # grey
    CL_RED=$'%{\e[0;31m%}'          # red
    CL_GREEN=$'%{\e[0;32m%}'        # green
    CL_GREEN_DEEP=$'%{\e[1;32m%}'   # bold green
    CL_YELLOW=$'%{\e[0;33m%}'       # yellow
    CL_BLUE=$'%{\e[0;34m%}'         # blue
    CL_PURPLE=$'%{\e[0;35m%}'       # violet
    CL_CYAN=$'%{\e[0;36m%}'         # cyan
    CL_SPECIAL=$'%{\e[1;30m%}'      # bold grey
    CL_RESULT=$'%{%(?,v,\e[0;31mx\e[0m)%}'        # cmd result
	CL_BRANCH=$(git symbolic-ref HEAD 2>/dev/null | cut -d'/' -f3)
#%(?,v,${CL_RED}x${CL_NORMAL})
    if [ ${USER} = 'root' ]
    then
        PR_USER="[${CL_RED}%n${CL_NORMAL} @"
        PR_HOST=" ${CL_SPECIAL}%m${CL_NORMAL}] - %? %# "
        RPROMPT="[${CL_PURPLE}%~${CL_NORMAL}]"
    else
        PR_USER="[${CL_RESULT}] ${CL_GREEN_DEEP}UgO:${CL_NORMAL}"
        PR_HOST="${CL_BRANCH}${CL_GREEN}:%m${CL_NORMAL}> "
        RPROMPT="[${CL_YELLOW}%~${CL_NORMAL}]"
    fi
    PROMPT="${PR_USER}${PR_HOST}"

}
setprompt
# EOF
