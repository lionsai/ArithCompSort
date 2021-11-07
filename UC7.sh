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

echo "dictionary: " ${!comp[@]} "--> " ${comp[@]}
declare -a arr

for((i=1; i<=4; i++))
do
<<<<<<< HEAD
        arr[$i]=${comp[i]}
        echo $i ">" ${comp[i]}
=======
	arr[$i]=${comp[i]}
	echo $i ">" ${comp[i]}
>>>>>>> 9b70c16560a967c555f84974f466f7997e00b2df

done

echo ${arr[@]}
