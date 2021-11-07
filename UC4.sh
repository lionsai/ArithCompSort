#!/bin/bash

read -p "a: " a
read -p "b: " b
read -p "c: " c

q=$(($c+$a/$b))

echo "c+a/b = " $q
