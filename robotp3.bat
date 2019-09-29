set _my_datetime=%date%_%time%
set _my_datetime2=%date%_%time%
set _my_datetime=%date%_%time%
set _my_datetime=%_my_datetime: =_%
set _my_datetime=%_my_datetime::=%
set _my_datetime=%_my_datetime:/=_%
set _my_datetime=%_my_datetime:.=%
set _my_datetime=%_my_datetime:,=%
#echo %_my_datetime%
::set subkey1=%random%%random%%random%%random%%random%%random%
SET /A subkey1=%RANDOM% * 10000 / 32768 + 1
set reportname=%_my_datetime%_%subkey1%
set path_own=C:\\development\\mlsz\\Results\\

:: robot -d C:\development\robot-scripts\stemx_uj_git\results\valami\ -r %reportname% -o %reportname% -l %reportname% -i most22 C:\development\robot-scripts\stemx_uj_git\egyeb\teszt2.robot
:: robot -d C:/development/mlsz/results/mlsz -r %reportname% -o %reportname% -l %reportname% -i most C:/development/mlsz/Tests/mlsz.robot
robot -d %path_own%valami_uj -r %reportname%_report -o %reportname%_output -l %reportname%_log -i most C:\development\robot-scripts\mlsz