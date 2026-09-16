# push_all.ps1 - GitHub에 저장소 5개를 만들고 첫 커밋을 올립니다.
# 사용법:  gh auth login  후에
#   powershell -ExecutionPolicy Bypass -File "G:\내 드라이브\서경's\Graduate\cv\push_all.ps1"

$ErrorActionPreference = "Continue"
$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User")
$user = "seokyung26"

# 로그인 확인
gh auth status 2>$null
if ($LASTEXITCODE -ne 0) {
    Write-Host "GitHub에 로그인되어 있지 않습니다. 먼저  gh auth login  을 실행하세요." -ForegroundColor Red
    exit 1
}

$repos = @(
    @{ name = "$user.github.io";               path = "G:\내 드라이브\서경's\Graduate\cv";              visibility = "--public";  desc = "Personal academic website - Seokyung Park, PASS Lab, Pusan National University" },
    @{ name = "quadruped-agri-robot";           path = "C:\Users\user\github\quadruped-agri-robot";     visibility = "--private"; desc = "Quadruped robot (Unitree Go2) as a mobile sensing platform: greenhouse microclimate mapping, GRF-based slope estimation, soil surface mapping (M.S. thesis)" },
    @{ name = "tomato-gripper-speed-control";   path = "C:\Users\user\github\tomato-gripper-speed-control"; visibility = "--private"; desc = "Speed-dependent robotic gripper control for tomato harvesting: force sensing, viscoelastic modelling, hyperspectral damage assessment" },
    @{ name = "airdome-foundation-monitoring";  path = "C:\Users\user\github\airdome-foundation-monitoring"; visibility = "--private"; desc = "Air-dome foundation: X-PILE pull-out FEA (Abaqus), DIC pull-out tests, IoT structural sensing system" },
    @{ name = "soybean-drought-phenotyping";    path = "C:\Users\user\github\soybean-drought-phenotyping"; visibility = "--private"; desc = "Image-based drought stress phenotyping of soybean with YOLOv8 (undergraduate research, 2023)" }
)

foreach ($r in $repos) {
    Write-Host ""
    Write-Host "=== $($r.name) ===" -ForegroundColor Cyan
    Set-Location $r.path

    # 이미 origin 이 있으면 push 만
    $hasOrigin = (git remote 2>$null) -contains "origin"
    if (-not $hasOrigin) {
        gh repo create "$user/$($r.name)" $r.visibility --description $r.desc --source . --remote origin --push
    } else {
        git push -u origin main
    }
    if ($LASTEXITCODE -eq 0) { Write-Host "OK  -> https://github.com/$user/$($r.name)" -ForegroundColor Green }
    else { Write-Host "실패: $($r.name) (위 메시지 확인)" -ForegroundColor Red }
}

# GitHub Pages 켜기 (username.github.io 는 보통 자동이지만 확실히 해 둠)
Write-Host ""
Write-Host "=== GitHub Pages ===" -ForegroundColor Cyan
gh api -X POST "repos/$user/$user.github.io/pages" -f "source[branch]=main" -f "source[path]=/" 2>$null
if ($LASTEXITCODE -ne 0) { gh api -X PUT "repos/$user/$user.github.io/pages" -f "source[branch]=main" -f "source[path]=/" 2>$null }
Write-Host "사이트 주소: https://$user.github.io  (1~2분 후 접속 가능)" -ForegroundColor Green
Write-Host "빌드 상태:   https://github.com/$user/$user.github.io/actions"
