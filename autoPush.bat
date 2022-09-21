@echo off
cd /d %~dp0
git add . 
 git commit -m "FirstIt Will Be PushedAutomatically:%date:~0,10%,%time:~0,8%" 
git checkout -b UrgentSubmission
git push
@echo already Completed,

SET daoTime = 60
:dao
set /a daoTime=daoTime-1
ping -n 2 -w 500 127.1>nul
cls
echo uploading Git Is Completed And The Countdown Exits: %daoTime%S
if %daoTime%==0 (exit) else (goto dao)