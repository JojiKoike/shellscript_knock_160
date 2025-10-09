#!/bin/bash

echo I am a perfect human. | (read a; echo ${a^^})

# 区切り文字も出力
echo pen-pinapple-apple-pen | (IFS=-; read -a w; echo "${w[*]^}")

# 区切り文字は出力しない
echo pen-pinapple-apple-pen | (IFS=-; read -a w; echo "${w[@]^}")