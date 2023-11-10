#!/bin/bash

# 내부 함수 정의
run_command() {
  local command="$1"  # 첫 번째 매개변수로 명령어 받기
  shift              # 첫 번째 매개변수 제거

  echo "Running '$command' with options: $@"

  # 명령어 실행
  $command "$@"
}

# 사용자로부터 명령어와 옵션 입력 받기
echo "Enter a Linux command (e.g., ls): "
read user_command

echo "Enter options for the command: "
read user_options

# 입력된 명령어와 옵션을 함수에 전달
run_command "$user_command" $user_options
