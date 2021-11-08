#!/bin/bash

read -p "a: " a
read -p "b: " b
read -p "c: " c

p=$(($a+$b*$c))
q=$(($a*$b+$c))
r=$(($a/$b+$c))
s=$(($a%$b+$c))

declare -A comp

comp[1]=$p
comp[2]=$q
comp[3]=$r
comp[4]=$s

echo "dictionary: " ${!comp[@]} "--> " ${comp[@]}
declare -a arr

for((i=1; i<=4; i++))
do
        arr[$i]=${comp[i]}
        echo $i ">" ${comp[i]}

done
echo ${arr[@]}

for (( i=1; i<5; i++ ))
do
        for (( j=1; j<5-i-1; j++ ))
        do
                if [ ${arr[j]} -gt ${arr[$((j+1))]}]
                then
                        temp=${arr[j]}
                        arr[$j]=${arr[$((j+1))]}
                        arr[$((j+1))]=$temp
                fi
        done
done

echo "Array in ascendening order: "
echo ${arr[@]}
