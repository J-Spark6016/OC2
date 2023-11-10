#!/bin/bash

# 사용자로부터 검색할 이름 입력 받기
echo "Enter the name to search for (or type 'exit' to stop): "
read search_name

while [ "$search_name" != "exit" ]; do
  # DB.txt 파일에서 해당 이름 검색
  result=$(grep "^$search_name," DB.txt)

  if [ -n "$result" ]; then
    # 검색 결과가 있으면 결과 출력
    phone_number=$(echo "$result" | cut -d',' -f2)
    echo "Team member: $search_name, Phone number: $phone_number"
  else
    echo "Team member '$search_name' not found in DB.txt."
  fi

  # 사용자로부터 다시 검색할 이름 입력 받기
  echo "Enter the name to search for (or type 'exit' to stop): "
  read search_name
done

echo "Exiting the script."
