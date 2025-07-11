
@echo off
net session >nul 2>nul
if %errorlevel% neq 0 (
    echo Erro: Este script requer privilegios de administrador.
    echo Por favor, execute o script como administrador.
    pause
    exit /b 1
) else (
    echo Script executado como administrador.

taskkill /f /im FiveM.exe
taskkill /f /im steam.exe
taskkill /f /im EpicGamesLauncher.exe
rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\data\cache"
rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\data\nui-storage"
rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\data\server-cache"
rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\data\server-cache-priv"
rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\crashes"
rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\logs"
rmdir /s /q "%LocalAppData%\DigitalEntitlements"
rmdir /s /q "%AppData%\CitizenFX\kvs"
rmdir /s /q "C:\Program Files (x86)\Steam\userdata"
rmdir /s /q "C:\Program Files (x86)\Steam\appcache"
rmdir /s /q "C:\Program Files (x86)\Steam\bin"
rmdir /s /q "C:\Program Files (x86)\Steam\clientui"
rmdir /s /q "C:\Program Files (x86)\Steam\config"
rmdir /s /q "C:\Program Files (x86)\Steam\controller_base"
rmdir /s /q "C:\Program Files (x86)\Steam\dumps"
rmdir /s /q "C:\Program Files (x86)\Steam\friends"
rmdir /s /q "C:\Program Files (x86)\Steam\graphics"
rmdir /s /q "C:\Program Files (x86)\Steam\logs"
rmdir /s /q "C:\Program Files (x86)\Steam\music"
rmdir /s /q "C:\Program Files (x86)\Steam\package"
rmdir /s /q "C:\Program Files (x86)\Steam\public"
rmdir /s /q "C:\Program Files (x86)\Steam\resource"
rmdir /s /q "C:\Program Files (x86)\Steam\steam"
rmdir /s /q "C:\Program Files (x86)\Steam\steamui"
rmdir /s /q "C:\Program Files (x86)\Steam\tenfoot"
rmdir /s /q "C:\Users\ADMINI~1\AppData\Local\Temp"
rmdir /s /q "C:\Windows\temp"
mkdir C:\Windows\temp
rmdir /s /q "C:\Windows\Prefetch"
mkdir C:\Windows\Prefetch
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Cryptography" /v MachineGuid /f
reg delete "HKLM\SOFTWARE\Microsoft\Cryptography" /v MachineGuid /f
)
msg * Sucess!