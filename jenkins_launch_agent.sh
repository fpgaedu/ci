#!/bin/sh
SCRIPT=$(readlink -f "$0")
SCRIPT_DIR=$(dirname "$SCRIPT")

cd $SCRIPT_DIR
cd $1

wget http://ci.fpgaedu.com/jnlpJars/slave.jar
vagrant ssh -- java -jar /vagrant/slave.jar
