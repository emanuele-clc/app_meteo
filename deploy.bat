@echo off
REM Aggiorna la repo GitHub con un doppio-click
cd /d "%~dp0"
echo Carico gli aggiornamenti su GitHub...
git add .
set /p msg="Messaggio (invio per 'aggiornamento'): "
if "%msg%"=="" set msg=aggiornamento
git commit -m "%msg%"
git push
echo.
echo Fatto! Premi un tasto per chiudere.
pause >nul
