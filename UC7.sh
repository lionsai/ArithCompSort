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

<<<<<<< HEAD
for((i=1; i<=4; i++))
do
<<<<<<< HEAD
        arr[$i]=${comp[i]}
        echo $i ">" ${comp[i]}
=======
	arr[$i]=${comp[i]}
	echo $i ">" ${comp[i]}
>>>>>>> 9b70c16560a967c555f84974f466f7997e00b2df
=======
for((i=1; i<=4; i
>>>>>>> 618dd6d25fca04332ccdf3ca6d2eba0b6b283011

done

echo ${arr[@]}
