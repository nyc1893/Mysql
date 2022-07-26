@echo off
set "Ymd=%date:~,4%%date:~5,2%%date:~8,2%" 

forfiles /p "F:\generated\backup" /m FileName_*.sql -d -90 /c "cmd /c del /f @path" 
   

C:\mysql-8.0.19-winx64\bin\mysqldump  -u root -p123 --all-databases> F:\generated\backup\FileName_%Ymd%.sql    
PAUSE   
@echo on
