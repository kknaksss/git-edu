#!/usr/bin/env bash

set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$repo_root"

if [ -n "$(git status --porcelain)" ]; then
  echo "작업 중인 변경 사항이 있습니다. commit하거나 정리한 뒤 다시 실행하세요."
  exit 1
fi

if [ "$(git branch --show-current)" != "main" ]; then
  git switch main
fi

git pull --ff-only origin main

files=(practice-03/*.md)

if [ ! -e "${files[0]}" ]; then
  echo "practice-03에 Markdown 파일이 없습니다."
  exit 1
fi

# 일부 파일만 바뀌는 상황을 막기 위해 모든 파일을 먼저 확인합니다.
for file in "${files[@]}"; do
  name="$(basename "$file" .md)"
  expected="안녕하세요 $name - 테스트 입니다."

  if [ "$(wc -l < "$file" | tr -d ' ')" -ne 1 ] || ! grep -Fqx "$expected" "$file"; then
    echo "예상한 초기 문구와 다른 파일입니다: $file"
    echo "현재 내용을 확인한 뒤 다시 실행하세요."
    exit 1
  fi
done

for file in "${files[@]}"; do
  name="$(basename "$file" .md)"
  printf '안녕하세요 %s - 강사가 수정했습니다.\n' "$name" > "$file"
done

git add practice-03
git commit -m "practice: update practice 03 files for conflicts"
git push origin main

echo "practice-03 문서를 수정해 main에 push했습니다."
