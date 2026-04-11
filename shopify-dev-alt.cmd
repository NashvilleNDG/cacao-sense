@echo off
REM Same as shopify-dev.cmd but uses port 9293 when 9292 is already in use.
cd /d "%~dp0"
echo Theme root: %CD%
echo Preview URL: http://127.0.0.1:9293
echo.
where shopify >nul 2>&1
if errorlevel 1 (
  echo Shopify CLI not found. Install: https://shopify.dev/docs/themes/tools/cli/install
  pause
  exit /b 1
)
shopify theme dev --port 9293
