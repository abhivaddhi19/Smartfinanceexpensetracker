$env:JAVA_HOME = "C:\Users\sniper\tools\jdk-17.0.12+7"
$env:Path = "$env:JAVA_HOME\bin;C:\Users\sniper\tools\apache-maven-3.9.9\bin;$env:Path"
Write-Host "=====================================================================" -ForegroundColor Cyan
Write-Host " Starting Smart Expense Tracker and Personal Finance Management System" -ForegroundColor Green
Write-Host " URL: http://localhost:8080" -ForegroundColor Yellow
Write-Host "=====================================================================" -ForegroundColor Cyan
& "C:\Users\sniper\tools\apache-maven-3.9.9\bin\mvn.cmd" spring-boot:run
