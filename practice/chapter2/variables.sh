#!/bin/bash

# 変数の定義
a=おまえは払え
echo ${a}

# 変数$SHELLの出力
echo $SHELL

# ヒアストリング
cat <<< $SHELL