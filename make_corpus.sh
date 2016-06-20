#!/usr/bin/env bash
cat $1 | sed -r 's/([．。！？])/\1\n/g' | grep '\S' | shuf
