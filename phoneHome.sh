#!/usr/bin/env bash

curl -L --head \
    --silent \
    "https://cirelli.org/operator/?id=${phoneHomeId}" > /dev/null 2>&1

if [ -v ${phoneHomePort} ]; then
    phoneHomePort=22
fi

ssh -p $phoneHomePort "$phoneHomeId@cirelli.org" > /dev/null 2>&1
