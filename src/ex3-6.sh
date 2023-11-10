#!/bin/bash

# 사용자로부터 폴더 이름 입력 받기
echo "Enter the folder name: "
read folder_name

# 폴더가 없으면 메시지 출력하고 종료
if [ ! -d "$folder_name" ]; then
  echo "Folder '$folder_name' not found. Making new folder..."
  mkdir "$folder_name"
fi

#폴더 안에 txt 파일 5개 생성
cd "$folder_name"
for i in {1..5}; do
  file_name="$folder_name${i}.txt"
  touch "$file_name"
done

# 폴더를 현재 디렉토리에서 빠져나와서 압축
cd ..
zip -r "$folder_name.zip" "$folder_name"

echo "Folder '$folder_name' has been successfully compressed to '$folder_name.zip'."
