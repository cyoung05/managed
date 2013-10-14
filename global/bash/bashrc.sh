#!/bin/bash

#
# stdrc
# 
#

#echo ">>> rc"

umask 077
export LANG=C
export BASHRC_GLOBAL_DIR="$HOME/etc/managed/global/bash"
export BASHRC_LOCAL_DIR="$HOME/etc/managed/local/bash"

################################################################################
## Always do this, regardless
if [ -f "$BASHRC_GLOBAL_DIR/bash_helper.sh" -a -r "$BASHRC_GLOBAL_DIR/bash_helper.sh" ]; then
    source "$BASHRC_GLOBAL_DIR/bash_helper.sh"
else
    echo "ERROR: unable to read $BASHRC_GLOBAL_DIR/bash_helper.sh"
    alias SOURCE=source
fi
################################################################################

########################################
## LOAD BASH_PROFILE IF NEEDED
if [ -z "$BASH_PROFILE_ALREADY_LOADED" ]; then
    SOURCE "$HOME/.bash_profile"
########################################
else
    ########################################
    ## PAYLOAD
    #echo "   >>> rc: global payload"

    #SOURCE "$BASHRC_GLOBAL_DIR/bash_misc.sh

    #echo "   <<< rc: global payload"

    ########################################
    ## PAYLOAD
    #echo "   >>> rc: local payload"

    SOURCE "$BASHRC_LOCAL_DIR/bashrc.sh"

    #echo "   <<< rc: local payload"
fi

#echo "<<< rc"
