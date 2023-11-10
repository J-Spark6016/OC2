#!/bin/bash

# 사용자로부터 이름 입력 받기
echo "Enter a name: "
read name

# 폴더 생성
mkdir "$name"

# 파일 및 폴더 생성 및 링크
cd "$name"
for i in {1..5}; do
  file_name="$name${i}.txt"
  folder_name="$name${i}"

  # 파일 생성
  touch "$file_name"

  # 폴더 생성 및 파일 링크
  mkdir "$folder_name"
  ln -s "../$file_name" "$folder_name/$file_name"
done
