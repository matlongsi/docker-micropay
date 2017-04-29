#!/bin/bash

if [[ -z $1 ]]; then
	echo "Node name missing. Usage $0 <node name>."
	exit 1
fi

docker network inspect micropay >/dev/null 2>&1
if [[ $? != 0 ]]; then
	docker network create micropay;
fi

docker build --file micropay/Dockerfile --tag matlongsi/micropay micropay
docker rm -f $1
docker create -t --name=$1 --hostname=$1 --network micropay --interactive matlongsi/micropay

exit 0
