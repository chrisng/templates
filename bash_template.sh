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

# VARIABLES
my_needed_commands=""

# FUNCTIONS

chk_commands() {
  missing_counter=0
  for needed_command in $my_needed_commands; do
    if ! hash "$needed_command" >/dev/null 2>&1; then
      printf "Command not found in PATH: %s\n" "$needed_command" >&2
      ((missing_counter++))
    fi
  done
  
  if ((missing_counter > 0)); then
    printf "Minimum %d commands are missing in PATH, aborting\n" "$missing_counter" >&2
    exit 127
  fi
}

err() {
  printf "[$(date +'%Y-%m-%dT%H:%M:%S%z')]: $@" >&2
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
