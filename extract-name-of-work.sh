#!/usr/bin/env bash
cat $1 | \
grep -E -o '『[^』]+』' | \
sed -r 's/『([^』]+)』/\1/g' | \
sort | uniq | grep -P '[^ \w\d]' | \
gawk '(length()>2 && length()<=30){print}' | \
grep -v "'" | \
grep -v '[/" !?=([@#.~+-]'
