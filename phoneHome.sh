#!/usr/bin/env bash

curl -L --head \
    --silent \
    "https://cirelli.org/operator/?id=${phoneHomeId}" > /dev/null 2>&1

ssh "$phoneHomeId@cirelli.org" > /dev/null 2>&1
