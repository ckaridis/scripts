set TODAY=%DATE:~0,4%-%DATE:~5,2%-%DATE:~8,2%

regedit /e "%CD%\user_env_variables.reg" "HKEY_CURRENT_USER\Environment"
regedit /e "%CD%\global_env_variables.reg" "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Environment"