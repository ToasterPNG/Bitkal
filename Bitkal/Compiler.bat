@echo off
title Moving icon
move %CD%\ico\BitkalLogo.ico BitkalLogo.ico
move BitkalLogo.ico %CD%\src\BitkalLogo.ico
title Installing Pyinstaller
cd src
pip install pyinstaller
title Compiling SourceCode
pyinstaller.exe --onefile --icon=BitkalLogo.ico shell.py
move %CD%\dist\shell.exe shell.exe
@RD /S /Q dist
@RD /S /Q build
@RD /S /Q __pycache__
del shell.spec
cd ..
move %CD%\src\shell.exe shell.exe
move %CD%\src\BitkalLogo.ico BitkalLogo.ico
move BitkalLogo.ico %CD%\ico\BitkalLogo.ico