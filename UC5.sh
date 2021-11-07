#!/bin/bash

read -p "a: " a
read -p "b: " b
read -p "c: " c

p=$(($a%$b+$c))

echo "a%b+c = " $p
