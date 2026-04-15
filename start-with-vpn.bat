@echo off
title Migration App + VPN
echo ============================================
echo     Migration App - Starting with VPN
echo ============================================
echo.

:: Check if OpenVPN is already connected
ping -n 1 -w 1000 192.168.40.54 >nul 2>&1
if %errorlevel%==0 (
    echo [OK] Database is reachable. VPN not needed.
    goto START_APP
)

echo [!] Database unreachable. Starting VPN...
echo.

:: Start OpenVPN in the background
start /B "" "C:\Program Files\OpenVPN\bin\openvpn.exe" --config "%~dp0vpn\config.ovpn" --cd "%~dp0vpn" --log "%~dp0vpn\vpn.log"

:: Wait for connection (max 30 seconds)
set /a count=0
:WAIT_VPN
timeout /t 1 /nobreak >nul
set /a count+=1
findstr /C:"Initialization Sequence Completed" "%~dp0vpn\vpn.log" >nul 2>&1
if %errorlevel%==0 (
    echo [OK] VPN connected successfully!
    goto START_APP
)
findstr /C:"AUTH_FAILED" "%~dp0vpn\vpn.log" >nul 2>&1
if %errorlevel%==0 (
    echo [ERROR] VPN authentication failed. Check vpn\auth.txt
    pause
    exit /b 1
)
if %count% lss 30 goto WAIT_VPN
echo [WARNING] VPN timed out. Check vpn\vpn.log
echo Continuing anyway...

:START_APP
echo.
echo Starting Migration App...
echo.
cd /d "%~dp0"
npm run dev
