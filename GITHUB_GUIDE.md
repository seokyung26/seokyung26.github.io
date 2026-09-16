# GitHub 시작 가이드 (박서경용)

> 이 문서는 로컬에 만들어 둔 저장소 5개를 GitHub 계정 **seokyung26** 에 올리고, 이후 평소에 어떻게 쓰는지 정리한 것입니다.

## 0. 용어 3개만 알면 됩니다

| 용어 | 뜻 | 비유 |
|---|---|---|
| **저장소 (repository, repo)** | 프로젝트 하나의 폴더 + 변경 이력 | 프로젝트 폴더 |
| **커밋 (commit)** | "지금 상태를 저장" 하는 스냅샷 | 논문 v1, v2, v3 저장 |
| **푸시 (push)** | 내 컴퓨터의 커밋을 GitHub 서버로 올리기 | 클라우드 업로드 |

로컬(내 PC) 저장소 ↔ GitHub 저장소는 `git push` / `git pull` 로 동기화합니다.

## 1. 지금 만들어진 것

| 저장소 이름 | 로컬 위치 | 내용 | 공개 |
|---|---|---|---|
| `seokyung26.github.io` | `G:\내 드라이브\서경's\Graduate\cv` | 포트폴리오 웹사이트 (Research / Publications / About / Education / Skills / Experience / Contact) | 공개 (Pages는 공개 필요) |
| `quadruped-agri-robot` | `C:\Users\user\github\quadruped-agri-robot` | 사족보행로봇: 온실 미기상 지도화, 경사 추정, 학위논문(토양 표면 매핑) | 비공개 |
| `tomato-gripper-speed-control` | `C:\Users\user\github\tomato-gripper-speed-control` | 토마토 그리퍼 속도 제어 (Biosystems Eng. 투고) | 비공개 |
| `airdome-foundation-monitoring` | `C:\Users\user\github\airdome-foundation-monitoring` | 에어돔 기초 X-PILE FEA, DIC, 계측 시스템 | 비공개 |
| `soybean-drought-phenotyping` | `C:\Users\user\github\soybean-drought-phenotyping` | 학부 콩 한발 표현형 (YOLOv8) | 비공개 |

- 각 저장소에는 `README.md`(프로젝트 설명)와 `code/`(원본 Workspace에서 골라 복사한 코드)가 있습니다. 데이터(csv, bag, odb 등)는 `.gitignore` 로 제외했습니다.
- 프로젝트 저장소는 **비공개(private)** 로 만들어집니다. 논문 게재 후 공개로 바꾸면 됩니다 (GitHub 저장소 → Settings → Danger Zone → Change visibility).
- 원본 코드 위치는 그대로 두었습니다. 복사본만 저장소에 있습니다.

## 2. 처음 한 번만: GitHub 로그인 + 업로드 (5분)

PowerShell 을 열고 아래를 순서대로 실행합니다.

### 2-1. GitHub CLI 로그인
```powershell
gh auth login
```
질문이 나오면 이렇게 고릅니다.
1. `GitHub.com`
2. `HTTPS`
3. `Authenticate Git with your GitHub credentials?` → **Y**
4. `Login with a web browser` → Enter → 화면에 8자리 코드가 나옵니다 → 브라우저에 붙여넣고 seokyung26 계정으로 승인

### 2-2. 저장소 5개 생성 + 업로드 (자동)
```powershell
powershell -ExecutionPolicy Bypass -File "G:\내 드라이브\서경's\Graduate\cv\push_all.ps1"
```
스크립트가 GitHub에 저장소를 만들고 첫 커밋을 올린 뒤, 웹사이트(GitHub Pages)를 켭니다.
1~2분 뒤 **https://seokyung26.github.io** 에서 사이트를 볼 수 있습니다.

### 2-3. 커밋 이메일 확인
커밋 작성자 이메일을 `seokyung.park@pusan.ac.kr` 로 설정했습니다. GitHub에서 내 기여로 인식되려면
GitHub → Settings → Emails 에 이 주소가 등록되어 있어야 합니다 (없으면 Add email address).

## 3. 평소 사용법 (파일 고치고 올리기)

예: 사이트의 Publications 를 수정했을 때
```powershell
cd "G:\내 드라이브\서경's\Graduate\cv"
git add .
git commit -m "Add KSAM 2026 presentation"
git push
```
프로젝트 저장소도 동일합니다 (`cd C:\Users\user\github\quadruped-agri-robot` 후 같은 3줄).

- `git status` : 무엇이 바뀌었는지 보기
- `git log --oneline` : 커밋 이력 보기
- GitHub Desktop(https://desktop.github.com) 을 설치하면 위 과정을 클릭으로 할 수 있습니다.

## 4. 저장소에 코드/문서 추가하기

- 코드: 각 저장소의 `code/` 아래에 폴더를 만들고 파일을 넣습니다.
- 발표자료·포스터 PDF: `docs/` 에 넣습니다 (10 MB 이하 권장, 100 MB 초과는 GitHub이 거부).
- 데이터는 올리지 않습니다. `.gitignore` 에 이미 csv/xlsx/bag/odb 등이 제외되어 있으니 실수로 올라가지 않습니다. 정말 올려야 하면 `git add -f 파일명`.

## 5. 웹사이트 내용 수정

`cv` 폴더의 `.md` 파일이 곧 페이지입니다. 메모장/VS Code로 열어 글을 고치고 push 하면 자동 반영됩니다.
- 메뉴 순서: `_config.yml` 의 `header_pages`
- `<!-- TODO -->` 표시가 있는 줄은 확인이 필요한 항목입니다 (아래 6번).
- 나중에 예쁘게 만들 때: `_config.yml` 의 `theme:` 를 바꾸거나 al-folio / academicpages 같은 학술용 템플릿으로 갈아탑니다. 내용(.md)은 거의 그대로 재사용됩니다.

## 6. 확인이 필요한 항목 (TODO)

파일 안에서 `TODO` 로 검색하면 나옵니다.
1. `publications.md` — 2026 ASABE 발표 제목, 2024·2025 정밀농업학회 발표 제목
2. `education.md` — 학사 졸업 연월, OPIc 등급, 2023.10 부산대 수상명, 2023.01 LINC 3.0 수상명
3. `experience.md` — 저수지 과제 정식 명칭과 역할, 조교/세미나 등
4. `about.md` — OPIc 등급

## 7. 주의사항

- `C:\Users\user\Workspace` 폴더 자체가 이미 git 저장소(원격 `seokyung26/lab`)로 되어 있고 변경 파일 3만 개가 커밋되지 않은 상태입니다. 12 GB 짜리 zip 등 대용량이 섞여 있어 그대로 push 하면 실패합니다. 이번에 만든 저장소들은 그 폴더 밖(`C:\Users\user\github`)에 별도로 만들었으니 서로 간섭하지 않습니다.
- Google Drive 폴더(G:) 안의 git 저장소는 동기화 중 잠금 파일 충돌이 가끔 납니다. 문제가 생기면 `cv` 폴더를 `C:\Users\user\github\seokyung26.github.io` 로 옮겨 써도 됩니다 (git 이력은 폴더 안 `.git` 에 같이 있으므로 그대로 따라갑니다).
