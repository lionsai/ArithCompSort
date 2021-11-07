#!/bin/bash

read -p "a: " a
read -p "b: " b
read -p "c: " c

p=$(($a+$b*$c))
q=$(($a*$b+$c))
r=$(($a/$b+$c))
s=$(($a%$b+$c))

comp[1]=$p
comp[2]=$q
comp[3]=$r
comp[4]=$s

echo ${comp[@]}
