@echo off

if exist "%PROGRAMFILES%\FusionInventory-Agent" (
         "%PROGRAMFILES%\FusionInventory-Agent\Unistall.exe" /S
)
REM "c:\Program Files\FusionInventory-Agent\Uninstall.exe" /S
::  "c:\Program Files (x86)\FusionInventory-Agent\Uninstall.exe" /S

glpi-agent-deployment.vbs