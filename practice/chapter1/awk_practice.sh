#!/bin/bash

# いずれかの文字に該当する文字列を検索
seq 5 | awk '/[24]/' | xargs

# 演算結果がある値になる場合を検索
seq 5 | awk '$1%2==0' | xargs

# 検索にマッチした行に処理を加える
seq 5 | awk '$1%2==0{printf("%s 偶数\n", $1)}'

# 2組以上の条件と処理
seq 5 | awk '$1%2==0{printf("%s 偶数\n", $1)}$1%2{printf("%s 奇数\n", $1)}'

# 複数の条件と処理と終了後の処理
seq 5 | awk 'BEGIN{a=0}$1%2==0{printf("%s 偶数\n", $1)}$1%2{printf("%s 奇数\n", $1)}{a+=$1}END{print "合計", a}'

# 設定ファイルからの情報抽出
cat ../../qdata/5/ntp.conf | awk '$1=="pool"' | awk '{print $2}'