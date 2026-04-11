@echo off
REM Always start Shopify CLI from this folder (must contain sections\, templates\, etc.)
cd /d "%~dp0"
echo Theme root: %CD%
echo.
echo If you see EADDRINUSE on 9292, another theme dev is still running.
echo Close that window, or run: shopify-dev-alt.cmd  (uses port 9293^)
echo.
where shopify >nul 2>&1
if errorlevel 1 (
  echo Shopify CLI not found. Install: https://shopify.dev/docs/themes/tools/cli/install
  pause
  exit /b 1
)
shopify theme dev
