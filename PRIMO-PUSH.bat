@echo off
REM ============================================================
REM  Primo caricamento della cartella su GitHub (un doppio-click)
REM  Repo: https://github.com/emanuele-clc/app_meteo
REM  Serve avere Git installato: https://git-scm.com/download/win
REM ============================================================
cd /d "%~dp0"

where git >nul 2>nul
if errorlevel 1 (
  echo [X] Git non e' installato.
  echo     Scaricalo da https://git-scm.com/download/win, installa, poi riapri questo file.
  pause
  exit /b
)

echo Inizializzo la repository...
if not exist ".git" git init

git add .
git commit -m "Prima versione app meteo" 2>nul
git branch -M main

REM collega il remote (se gia' presente aggiorna solo l'URL)
git remote add origin https://github.com/emanuele-clc/app_meteo.git 2>nul
git remote set-url origin https://github.com/emanuele-clc/app_meteo.git

echo.
echo Carico su GitHub... (potrebbe aprirsi una finestra per accedere a GitHub)
git push -u origin main

echo.
echo ============================================================
echo  FATTO. Se non ci sono errori i file sono online.
echo  Ora attiva la pubblicazione: sulla repo -> Settings -> Pages
echo  -> Source: main / (root) -> Save.
echo  Il link sara': https://emanuele-clc.github.io/app_meteo/
echo ============================================================
pause
