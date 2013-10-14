#!/bin/bash

#
# stdprofile
# 
#

#echo ">>> profile"

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
## PAYLOAD
## this part is only executed on login
if [ -z "$BASH_PROFILE_ALREADY_LOADED" ]; then
    #echo "   >>> profile: payload"
    export BASH_PROFILE_ALREADY_LOADED="yes"

    SOURCE "$BASHRC_GLOBAL_DIR/bash_data.sh"

    #BASH_ENV="$BASHRC_GLOBAL_DIR/bashrc.sh"
    unset BASH_ENV

    export USERNAME BASH_ENV PATH

    #echo "   <<< profile: payload"
fi

########################################
## LOAD BASHRC IF NEEDED.
SOURCE "$HOME/.bashrc"
########################################

#echo "<<< profile"
