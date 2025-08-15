@echo off
:: Verifica se está sendo executado como administrador
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo Solicitando privilégios de administrador...
    powershell -Command "Start-Process cmd -ArgumentList '/c \"%~f0\"' -Verb RunAs"
    exit /b
)

:: Executa o comando PowerShell com privilégios de administrador
powershell.exe -ExecutionPolicy Bypass -Noninteractive -File "\\masrv247\clienthealth$\ConfigMgrClientHealth.ps1" -Config "\\masrv247\clienthealth$\Config.xml"
