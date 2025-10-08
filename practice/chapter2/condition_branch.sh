#! /bin/bash

a=1
# ワンライナー
if echo $a | grep '[02468]$'; then echo '偶数'; elif echo $a | grep '[13579]$'; then echo '奇数';  else echo '不明'; fi

# 複数行
if grep '[02468]$' <<< "$1" ; then
	echo '偶数'
elif grep '[13579]$' <<< "$1" ; then
	echo '奇数'
else
	echo '不明'
fi