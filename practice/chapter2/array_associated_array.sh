#!/bin/bash

# 配列の定義
a=( "$SHELL" "$LANG" "$USER" )

# 連想配列の定義
declare -A b
b["SHELL"]="$SHELL"
b["LANG"]="$LANG"
b["USER"]="$USER"

# 配列の要素を表示
echo ${a[1]}
echo ${b["LANG"]}

# 配列の全要素を表示
echo ${a[@]}
echo ${b[@]}

# 配列の要素数を表示
echo ${#a[@]}
echo ${#b[@]}

# キーの一覧を表示
echo ${!b[@]}

# [*]と[@]の違い
IFS=@ # 区切り文字を@に変更

# クォートしないと同じ
echo ${a[@]}
echo ${a[*]}

# クォートすると[*]のときの区切り文字が変化
echo "${a[@]}"
echo "${a[*]}"

# 連想配列でも同様
echo "${b[@]}"
echo "${b[*]}"