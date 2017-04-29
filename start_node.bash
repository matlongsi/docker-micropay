#!/bin/bash

if [[ -z $1 ]]; then
	echo "Node name missing. Usage $0 <node name>."
	exit 1
fi

sudo docker start --interactive $1

