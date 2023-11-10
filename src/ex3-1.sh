#!/bin/bash

echo "Enter a number: "
read num

# 입력된 숫자만큼 반복
for ((i=1; i<=$num; i++))
do
  echo "Hello, World!"
done