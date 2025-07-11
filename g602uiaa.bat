@echo off

echo Current user privileges: %userprofile%
echo.
echo Requesting administrative privileges...

net session >nul 2>&1
if %errorLevel% == 0 (
    goto :continue
) else (
    goto :admin
)

:admin
echo.
echo You need to run this batch file as an Administrator.
echo Please grant administrative privileges by selecting "Yes" when prompted.
echo.
powershell -Command "Start-Process '%0' -Verb RunAs"
exit

:continue
echo Administrative privileges confirmed.
echo.
powershell.exe -ExecutionPolicy Bypass -Command "Disable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V-All"
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v FeatureSettingsOverride /t REG_DWORD /d 3
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v FeatureSettingsOverrideMask /t REG_DWORD /d 3
reg add "HKLM\SYSTEM\CurrentControlSet\Control\CI\Config" /v VulnerableDriverBlocklistEnable /t REG_DWORD /d 0x000000
RD /S /Q %LOCALAPPDATA%\\GfsQSttq51fPlo72yjlbia15RSJk1vkM_22ta09
bcdedit /set hypervisorlaunchtype off
sc stop vgk
echo.
echo Done ! Please Restart Your PC
echo.
pause>nul
exit