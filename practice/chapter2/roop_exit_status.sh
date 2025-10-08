#!/bin/bash

set aa bb cc
echo $2

# for
for x in "$@"; do
	echo $x; done

# while
seq 3 | while read x ; do printf "%s" "$x"; done

# PIPESTATUS
cat /etc/passwd | grep hoge
echo ${PIPESTATUS[@]}