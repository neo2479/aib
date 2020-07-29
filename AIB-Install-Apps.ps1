### Make c:\temp
md c:\temp

### Install Firefox
Invoke-WebRequest -Uri "https://download.mozilla.org/?product=firefox-msi-latest-ssl&os=win64&lang=en-GB" -Outfile c:\temp\firefox.msi
Start-Process msiexec.exe -Wait -ArgumentList "/i c:\temp\firefox.msi /quiet"

### Install Putty
Invoke-WebRequest -Uri "https://the.earth.li/~sgtatham/putty/latest/w64/putty-64bit-0.74-installer.msi" -Outfile c:\temp\putty.msi
Start-Process msiexec.exe -Wait -ArgumentList "/i c:\temp\putty.msi /quiet"

### Install Notepad++
Invoke-WebRequest -Uri "https://github.com/notepad-plus-plus/notepad-plus-plus/releases/download/v7.8.8/npp.7.8.8.Installer.x64.exe" -Outfile c:\temp\notepadpp.exe
Start-Process c:\temp\notepadpp.exe -Wait -ArgumentList "/S"