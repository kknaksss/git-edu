# Git 실습 1

GitHub 저장소를 내 계정으로 가져오고, 파일을 수정한 뒤 다시 GitHub에 올려 봅니다.

## 오늘 해볼 것

```text
Fork → clone → 파일 만들기 → add → commit → push
```

## 준비물

- GitHub 계정
- Git
- Visual Studio Code
- 터미널

## 1. 저장소 Fork하기

1. 이 저장소의 GitHub 페이지를 엽니다.
2. 화면 오른쪽 위의 `Fork`를 누릅니다.
3. `Create fork`를 눌러 내 GitHub 계정에 저장소를 복사합니다.

Fork가 끝나면 저장소 주소 앞부분이 내 GitHub 아이디로 바뀌었는지 확인합니다.

```text
https://github.com/[내 GitHub 아이디]/git-edu
```

## 2. 내 컴퓨터로 clone하기

1. 내 계정에 생성된 `git-edu` 저장소에서 `Code`를 누릅니다.
2. `HTTPS` 주소를 복사합니다.
3. 터미널을 열고 저장소를 내려받을 폴더로 이동합니다.
4. 아래 명령어를 실행합니다.

```bash
git clone [복사한 Git 주소]
```

예시:

```bash
git clone https://github.com/[내 GitHub 아이디]/git-edu.git
```

clone한 폴더로 이동한 뒤 VS Code를 엽니다.

```bash
cd git-edu
code .
```

## 3. Markdown 파일 만들기

VS Code에서 `[내 이름].md` 파일을 만듭니다.

예시:

```text
홍길동.md
```

파일 안에 아래 내용을 작성하고 저장합니다.

```md
# 홍길동

Git 첫 번째 실습입니다.
```

## 4. 변경 내용 확인하기

VS Code의 터미널에서 아래 명령어를 실행합니다.

```bash
git status
```

내가 만든 Markdown 파일이 변경된 파일로 표시되는지 확인합니다.

## 5. 변경 사항 추가하기

```bash
git add .
git status
```

파일이 commit할 변경 사항으로 표시되는지 확인합니다.

## 6. 변경 이력 남기기

```bash
git commit -m "내 이름 파일 추가"
```

commit 메시지는 무엇을 변경했는지 알아볼 수 있게 작성합니다.

## 7. GitHub에 올리기

```bash
git push
```

GitHub 로그인이 필요하면 화면의 안내에 따라 로그인합니다.

## 8. 결과 확인하기

내 GitHub의 `git-edu` 저장소를 새로고침합니다.

- 내가 만든 Markdown 파일이 보이나요?
- commit 메시지가 보이나요?

두 가지가 모두 보이면 첫 번째 실습이 끝났습니다.

## commit에서 사용자 정보 오류가 발생한다면

아래 명령어에 본인의 이름과 회사 이메일을 입력한 뒤 다시 commit합니다.

```bash
git config --global user.name "내 이름"
git config --global user.email "내 회사 이메일"
```
