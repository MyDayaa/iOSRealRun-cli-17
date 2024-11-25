@echo off
setlocal

REM 获取当前批处理文件的目录
set CURRENT_DIR=%~dp0

REM 切换到当前目录并在 PowerShell 中执行命令
powershell -Command "Start-Process powershell -ArgumentList '-NoExit', '-Command', 'cd ''%CURRENT_DIR%''; conda activate run2; python main.py' -Verb runAs"

endlocal