#!/bin/sh
SCRIPT=$(readlink -f "$0")
SCRIPT_DIR=$(dirname "$SCRIPT")

cd $SCRIPT_DIR
cd $1

wget http://localhost:8080/jnlpJars/slave.jar -o slave.jar
vagrant ssh -- java -jar /vagrant/slave.jar
