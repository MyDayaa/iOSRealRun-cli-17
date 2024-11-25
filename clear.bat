@echo off
cd /d %~dp0
powershell -Command "Start-Process powershell -ArgumentList '-NoExit', '-Command', 'cd ''C:\Softwares\iOSRealRun-cli-17\''; conda activate run2; python clear.py ' -Verb runAs"
