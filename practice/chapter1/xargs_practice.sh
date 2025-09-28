#!/bin/bash

# パイプ経由で与えられた入力をコマンドの引数として渡す
seq 4 | xargs mkdir
seq 4 | xargs rmdir

# 複数ずつ引数を渡す
mkdir 1 3
seq 4 | xargs -n2 mv

# xargsが受け取った値を変数として使う
seq 4 | xargs -I@ mkdir dir_@

# ファイル名の一括変更
mkdir ./tmp
cd ./tmp
seq 1000 | xargs -P$(nproc) touch
time seq -w 1000 | awk '{print $1,$1}' | sed 's/^0*/mv /' | xargs -P$(nproc) -I@ sh -c @