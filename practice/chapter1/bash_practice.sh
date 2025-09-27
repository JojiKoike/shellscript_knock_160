#!/bin/bash

# コマンド文字列を生成してbashの引数に送り込む
seq 4 | awk '{print "mkdir " ($1%2 ? "odd_" : "even_") $1}' | bash