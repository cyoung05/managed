#!/bin/bash

#
# stddata
# 
#

export PAGER="less"
#export TERMINFO="$HOME/etc/managed/global/terminfo"
export WWW_HOME='http://usm.edu'
export CVS_RSH="ssh"
export LANG="C"
#export HISTSIZE=2000
#export HISTFILESIZE=2000
export RSYNC_RSH=ssh

if [ "$TERM" != "dumb" ]; then
    export COLOR="auto"
else
    export COLOR="never"
fi

if [ $TERM = "dumb" ]; then
    SOURCE "$BASHRC_GLOBAL_DIR/bash_ansioff.sh"
else
    SOURCE "$BASHRC_GLOBAL_DIR/bash_ansi.sh"
fi
