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
