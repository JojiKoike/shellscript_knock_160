#!/bin/bash

# 変数の宣言
a=Pay
b=You

# 変数の連結
c=${a}${b} ; echo ${c}
a+=${b} ; echo ${a}
b=${a:0:2}${a:2:2}; echo ${b}

# 変数の置換
d=${a/Pay/Receive} ; echo ${d}