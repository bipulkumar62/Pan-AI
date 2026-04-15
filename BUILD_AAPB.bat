@echo off
chcp 65001 >nul
echo ==========================================
echo   PAN AI - Build Android App Bundle (AABB)
echo   For Google Play Store
echo ==========================================
echo.

cd "%~dp0flutter_project"

echo [1/3] Cleaning previous builds...
flutter clean

echo.
echo [2/3] Getting dependencies...
flutter pub pub get

echo.
echo [3/3] Building App Bundle...
flutter build appbundle --release

echo.
echo ==========================================
echo   Build Complete!
echo ==========================================
echo.
echo AAB file location:
echo   build\app\outputs\bundle\release\
echo.
echo File: app-release.aab
echo.
echo Upload this to Google Play Console.
echo.
pause
