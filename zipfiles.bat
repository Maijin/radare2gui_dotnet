IF EXIST r4w_alpha-1.0.zip del r4w_alpha-1.0.zip
IF EXIST r4w rmdir /S /Q r4w
mkdir r4w
copy src\r4w\bin\x86\Debug\*.dll r4w
copy src\r4w\bin\x86\Debug\*.exe r4w
xcopy /s /Y /I src\r4w\media r4w\media
xcopy /s /Y /I src\r4w\scripts r4w\scripts
copy r2pipe\bin\Debug\*.dll r4w
del r4w\*vshost.exe
7z x src\r4w\radare2-w64-1.1.0-git.zip -or4w
7z a r4w_alpha-1.0.zip r4w
7z l r4w_alpha-1.0.zip
