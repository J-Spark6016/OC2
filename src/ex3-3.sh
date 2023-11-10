#!/bin/bash

echo "Enter your height in meters: "
read height

echo "Enter your weight in kilograms: "
read weight

# BMI 계산
bmi=$(echo "scale=2; $weight / ($height * $height)" | bc -l)

echo "Your BMI is: $bmi"

# BMI에 따른 정상 여부 판단
if (( $(echo "$bmi >= 18.5 && $bmi < 25" | bc -l) )); then
  echo "You have a normal weight."
else
  echo "Your weight is not in the normal range."
fi
