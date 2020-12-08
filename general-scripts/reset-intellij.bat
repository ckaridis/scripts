set PRODUCT=IntelliJIdea2020.3

set JETBRAINSDIR=%USERPROFILE%\AppData\Roaming\JetBrains
rmdir /S /Q %JETBRAINSDIR%\%PRODUCT%\eval
REM rmdir /S /Q %JETBRAINSDIR%\consentOptions
del %JETBRAINSDIR%\%PRODUCT%\options\other.xml
REM del %JETBRAINSDIR%\PermanentDeviceId
REM del %JETBRAINSDIR%\PermanentUserId
REM del %JETBRAINSDIR%\bl
REM del %JETBRAINSDIR%\crl
reg delete HKEY_CURRENT_USER\Software\JavaSoft /f

pause