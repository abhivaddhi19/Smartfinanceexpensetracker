@echo off
set "JAVA_HOME=C:\Users\sniper\tools\jdk-17.0.12+7"
set "PATH=%JAVA_HOME%\bin;C:\Users\sniper\tools\apache-maven-3.9.9\bin;%PATH%"
echo =====================================================================
echo  Starting Smart Expense Tracker and Personal Finance Management System
echo =====================================================================
mvn spring-boot:run
pause
