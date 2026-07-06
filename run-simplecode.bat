@echo off
REM ============================================================
REM  simplecode launcher (DeepSeek v4-pro)
REM  Usage:
REM    run-simplecode.bat              -> interactive TUI
REM    run-simplecode.bat -p "task"    -> non-interactive, prints result
REM ============================================================

REM Switch console to UTF-8 so Chinese paths/output render correctly
chcp 65001 >nul

REM Force Python into UTF-8 mode (Chinese folder path otherwise breaks site.py)
set "PYTHONUTF8=1"
set "PYTHONIOENCODING=utf-8"

REM Always run from this script's own directory (project root)
cd /d "%~dp0"

REM Use the project's virtualenv interpreter; forward all CLI args (%*)
".venv\Scripts\python.exe" -m simplecode %*

REM Keep the window open after exit only when double-clicked (no args, interactive)
if "%~1"=="" pause
