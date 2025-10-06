#/bin/bash

# 変数の宣言
a=6
b=2
echo $((a+b)) $((b-a)) $((a*b)) $((a/b)) $((b<<a))
echo $(($a+$b)) $(($b-$a)) $(($a*$b)) $(($a/$b)) $(($b<<$a))