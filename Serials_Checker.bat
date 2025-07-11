@echo off
:diocane
title [Serials Checker]
color 0c
cls
echo [92m------------[91m
echo Bios
wmic bios get serialnumber
wmic csproduct get uuid
echo [92m------------[91m
echo CPU
wmic cpu get serialnumber
wmic cpu get processorid
echo [92m------------[91m
echo Diskdrive
wmic diskdrive get serialnumber
echo [92m------------[91m
echo Baseboard
wmic baseboard get serialnumber
echo [92m------------[91m
echo Ram
wmic memorychip get serialnumber
echo [92m------------[91m
echo MacAddress
wmic path Win32_NetworkAdapter where "PNPDeviceID like '%%PCI%%' AND NetConnectionStatus=2 AND AdapterTypeID='0'" get MacAddress
echo [92m------------[91m
echo GPU
wmic PATH Win32_VideoController GET Description,PNPDeviceID
echo Press ENTER to check serial again...
pause >nul
goto diocane