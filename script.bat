@echo off
set /p id= "What to do\n (Uninstall/Install)?"
for /F "tokens=1,2 delims=:" %%a in (apps.txt) do (
   echo "Working on %%b"
   adb shell pm uninstall -k --user 0 %%a
   pause
)