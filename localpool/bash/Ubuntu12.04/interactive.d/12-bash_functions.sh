#!/bin/bash

#
# functions
#

function quiet {
    $* >/dev/null 2>&1
}

function cdd {
    cd $*
    d
}

function peek {
    ps auwx | grep "$*"
}

function tell {
    local user_name
    user_name=$1
    shift 1
    echo "$*" | write $user_name
}