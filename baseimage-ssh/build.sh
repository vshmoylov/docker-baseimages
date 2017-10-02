#!/bin/sh

if [ ! -e key.pub ]; then 
    echo key.pub not found! Copying your ssh public key as key.pub
    cp ~/.ssh/id_*.pub key.pub
fi

echo Building image baseimage-ssh
docker build . -t baseimage-ssh
