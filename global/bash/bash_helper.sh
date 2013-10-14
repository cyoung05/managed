#!/bin/bash

#
# stdhelper
# 
#

#export BASH_VERBOSE=yes

function SOURCE
{
    
    if [ -f "$*" -a -r "$*" ]; then
	if [ $BASH_VERBOSE ]; then
	    echo "INFO: Reading $*"
	fi
	source "$*"
	if [ $BASH_VERBOSE ]; then
	    echo "INFO: Done reading $*"
	fi

    else
	if [ $BASH_VERBOSE ]; then
	    echo "WARNING: $* not readable.  Skipping."
	fi
    fi
}
