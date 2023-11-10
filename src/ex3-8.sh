#!/bin/bash

while true; do
  # 사용자로부터 이름 입력 받기
  echo "Enter team member's name (or type 'exit' to stop): "
  read name

  # 'exit'을 입력하면 스크립트 종료
  if [ "$name" == "exit" ]; then
    echo "Exiting the script."
    break
  fi

  # 사용자로부터 전화번호 입력 받기
  echo "Enter team member's phone number: "
  read phone_number

  # 이름과 전화번호를 DB.txt 파일에 추가
  echo "$name, $phone_number" >> DB.txt
  echo "Team member '$name' with phone number '$phone_number' has been added to DB.txt."
done
