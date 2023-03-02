#!/usr/bin/env bash


sudo docker run -u live --rm -v /tmp:/tmp -t -i --privileged ezarcher-adjustment/archiso-builder:latest
