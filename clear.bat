@echo off
setlocal

REM 获取当前批处理文件的目录
set CURRENT_DIR=%~dp0

REM 设置 Conda 环境名称
set CONDA_ENV=run2

REM 切换到当前目录并在 PowerShell 中执行命令
powershell -Command "Start-Process powershell -ArgumentList '-NoExit', '-Command', 'cd ''%CURRENT_DIR%''; conda activate %CONDA_ENV%; python clear.py' -Verb runAs"

endlocal
