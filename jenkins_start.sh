#!/bin/sh
SCRIPT=$(readlink -f "$0")
SCRIPT_DIR=$(dirname "$SCRIPT")

cd $SCRIPT_DIR
cd $1

vagrant up
