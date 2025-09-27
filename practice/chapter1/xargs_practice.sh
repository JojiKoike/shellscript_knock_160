#!/bin/bash

# パイプ経由で与えられた入力をコマンドの引数として渡す
seq 4 | xargs mkdir
seq 4 | xargs rmdir

# 複数ずつ引数を渡す
mkdir 1 3
seq 4 | xargs -n2 mv

# xargsが受け取った値を変数として使う
seq 4 | xargs -I@ mkdir dir_@