@echo off
REM Shopify theme dev — always port 9293 (http://127.0.0.1:9293/)
cd /d "%~dp0"
echo Theme root: %CD%
echo Preview: http://127.0.0.1:9293/
echo.
echo If port 9293 is busy, close the other terminal running theme dev, then run this again.
echo.
where shopify >nul 2>&1
if errorlevel 1 (
  echo Shopify CLI not found. Install: https://shopify.dev/docs/themes/tools/cli/install
  pause
  exit /b 1
)
shopify theme dev --port 9293
