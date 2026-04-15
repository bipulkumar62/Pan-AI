@echo off
chcp 65001 >nul
echo ==========================================
echo   PAN AI - Build Optimized APK
echo ==========================================
echo.

cd "%~dp0flutter_project"

echo [1/4] Cleaning previous builds...
flutter clean

echo.
echo [2/4] Getting dependencies...
flutter pub get

echo.
echo [3/4] Building release APK with optimizations...
flutter build apk --release --target-platform android-arm,android-arm64,android-x64 --split-per-abi

echo.
echo ==========================================
echo   Build Complete!
echo ==========================================
echo.
echo APK files location:
echo   build\app\outputs\flutter-apk\
echo.
echo Universal APK (works on all devices):
echo   app-release.apk
echo.
echo Split APKs (smaller downloads):
echo   app-arm64-v8a-release.apk  (modern devices)
echo   app-armeabi-v7a-release.apk (older devices)
echo   app-x86_64-release.apk    (emulators/x86)
echo.
echo To install:
echo   flutter install
echo.
pause
