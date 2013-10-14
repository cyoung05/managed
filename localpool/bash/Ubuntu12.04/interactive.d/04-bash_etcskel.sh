#!/bin/bash

#
# etcskel
#
#

#echo "            >>> etcskel"

[ -z "$BASHRC_LOCAL_DIR" ] && return

SOURCE /etc/skel/.bashrc

#echo "            <<< etcskel"
