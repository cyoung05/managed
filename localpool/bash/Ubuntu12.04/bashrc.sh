#!/bin/bash

#
# localrc
#
#

#echo "        >>> localrc"

[ -z "$BASHRC_LOCAL_DIR" ] && return

if [ -d "$BASHRC_LOCAL_DIR" -a -r "$BASHRC_LOCAL_DIR" ]; then
    for f in ${BASHRC_LOCAL_DIR}/all.d/*.sh; do
	if [ -r "$f" ]; then
	    SOURCE "$f"
	fi
    done

    for f in ${BASHRC_LOCAL_DIR}/interactive.d/*.sh; do
	if [ -r "$f" ]; then
	    SOURCE "$f"
	fi
    done

fi

#echo "        <<< localrc"
