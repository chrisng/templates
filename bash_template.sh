#!/bin/bash
set -e -u

##########################
# 
# Purpose:
#   
# Version:
#
# TODO:
#
#########################

# Variables

# Functions

err() {
  echo "[$(date +'%Y-%m-%dT%H:%M:%S%z')]: $@" >&2
}


if ! do_something; then
  err "Unable to do_something"
  exit "${E_DID_NOTHING}"
fi

# Since set -e is on return code like the following will fail
# command
# if [ #? -ne 0 ] ; then
# echo "Failed"
# fi
# You can use the below or set +e before the command
command || { echo "command failed"; exit 1; }
