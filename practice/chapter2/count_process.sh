#!/bin/bash

# プロセスの個数がわかっている場合
ps | awk '$4=="sleep" {print $1}' | sort -u | wc -l

# プロセスの個数がわからない場合
ps | awk '$4=="sleep"{a[$1]="";b++} END{print length(a), b}'