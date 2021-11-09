#!/bin/bash -x

read -p "a: " a
read -p "b: " b
read -p "c: " c

p=$(($a+$b*$c))
q=$(($a*$b+$c))
r=$(($a/$b+$c))
s=$(($a%$b+$c))

declare -A comp

comp[p]=$p
comp[q]=$q
comp[r]=$r
comp[s]=$s

echo "dictionary: " ${!comp[@]} "--> " ${comp[@]}
declare -a arr
arr=("$p" "$q" "$r" "$s")

echo ${arr[@]}

for (( i=0; i<4; i++ ))
do
        for (( j=0; j<4-i-1; j++ ))
        do
                if (( arr[j]<arr[j+1] ))
                then
                        temp=${arr[j]}
                        arr[$j]=${arr[$((j+1))]}
                        arr[$((j+1))]=$temp
                fi
        done
done

echo "Array in ascendening order: "
echo ${arr[@]}
