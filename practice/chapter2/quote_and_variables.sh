#!/bin/bash

p=pen
re=""

echo $p "$p" '$p' # $p is expanded, "$p" is expanded, '$p' is not expanded
echo "This is a $p." 'That is a $p.' # $p is expanded, '$p' is not expanded
echo "This is a ${p}cil."	'This is a ${p}cil.' "This is a $pcil," # ${p} is expanded
grep "$re" /etc/passwd # $re is expanded
grep '$re' /etc/passwd # $re is not expanded