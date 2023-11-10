#!/bin/bash

read -p "첫 번째 숫자를 입력하세요: " num1
read -p "연산자를 입력하세요 (+ 또는 -): " operator
read -p "두 번째 숫자를 입력하세요: " num2

if [[ "$operator" == "+" ]]; then
    result=$(($num1 + $num2))
elif [[ "$operator" == "-" ]]; then
    result=$(($num1 - $num2))
else
    echo "올바른 연산자를 입력하세요 (+ 또는 -)."
    exit 1
fi

echo "결과: $result"
