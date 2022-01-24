@ECHO off

//Automatically Run As Administrator

setlocal EnableDelayedExpansion

Title Windows Command Prompt for Newbie
 
PUSHD %~DP0 & cd /d "%~dp0"
%1 %2
mshta vbscript:createobject("shell.application").shellexecute("%~s0","goto :runas","","runas",1)(window.close)&goto :eof
:runas
// Run As Administrator
color b
cls

echo Loading, sedang menyiapkan file program
echo Loading, Preparing program

@echo.

echo loading 0%
ping localhost -n 4 >nul
cls

echo loading 90%
ping localhost -n 2 >nul
cls

echo loading 100%
ping localhost -n 1 >nul

cls

@echo.

cls

echo update 25 Jan 2022

@echo.
echo CHANGELOG:
@echo.
echo 1. remove mode con:cols=110 lines=15
echo 2. add auto Run As Administrator without Run As Administrator from user
echo 3. Wifi password viewer
echo 4. Youtube Downloader Mp3/Mp4
echo 5. Add English Language
@echo.

echo enter for continue
pause

:start
color 0B
@cls
echo.
echo.
echo.
@echo	++	     000   000   00000	    000   000   000   000   000   000000000   00000000   000000
@echo	  ++	      000 000	 000 000    000   000   000   000   000   000	      000  000   0
@echo	   ++	        000	 000   000  000   000   000   000   000   000000000   000000     000000
@echo	  ++	      000 000	 000	000 000   000   000    000 000    000	      000  000        0
@echo	++   ______  000   000	 000	  00000   000000000      000      000000000   000   000  000000
@echo.
@echo					Made By Xnuvers007
@echo					From : INDONESIA

@echo off

echo 0. exit
echo 1. Laporan Baterai / Battery Report
echo 2. Hapus File Tidak terpakai atau Cache (Aman) / Remove cache
echo 3. Jaringan wifi tidak ditemukan (Problem Wifi) / No Wifi Network Found
echo 4. Scan Harddisk
echo 5. System Info
echo 6. Wifi Password Viewer
echo 7. Youtube Downloader Mp3/Mp4

set choice=
set /p choice="Menu : "

if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='1' goto :bat
if '%choice%'=='2' goto :remo
if '%choice%'=='3' goto :netw
if '%choice%'=='4' goto :sc
if '%choice%'=='5' goto :sysinfo
if '%choice%'=='0' goto :exit
if '%choice%'=='6' goto :wf
if '%choice%'=='7' goto :youtube
echo "%choice%" Invalid, try again | gagal, coba lagi

echo.
goto :start

Echo execution completed, any key to exit
 
pause >nul
exit

:bat
powercfg /batteryreport /output "C:\battery.html"

:batul
echo 1. Firefox
echo 2. Edge
echo 3. Chrome

echo ingin membukanya dimana ? | want to open with ?

set choice2=
set /p choice2="Menu : "
if not '%choice2%'=='' set choice2=%choice2:~0,1%
if '%choice2%'=='1' goto :Firefox
if '%choice2%'=='2' goto :Edge
if '%choice2%'=='3' goto :Chrome
echo "%choice2%" Invalid, try again | gagal, coba lagi

echo.
goto :batul

:Firefox
start firefox file:\\\C:\battery.html
goto start

:Edge
start msedge file:\\\C:\battery.html
goto start

:Chrome
start chrome file:\\\C:\battery.html
goto start

:exit
pause
exit

:remo
echo sedang memeriksa file temporary | checking file temporary
ping localhost -n 4 >nul
del /q/f/s %TEMP%\*

echo sedang memeriksa Recycle Bin | checking Recycle Bin
ping localhost -n 3 >nul

cd C:\
cd $Recycle.Bin
cleanmgr /sagerun:1

echo sedang memerika folder Prefetch / temporary 2 | checking folder Prefetch
ping localhost -n 3 >nul

cd C:\Windows\Prefetch
del /Q /F /S C:\Windows\Prefetch\*
del C:\Windows\Prefetch\*

goto start

:netw
netsh int ip reset resetlog.txt
ipconfig /flushdns
ipconfig /registerdns
ipconfig /release
ipconfig /renew

goto start

:sc
echo Melakukan Scanning Harddisk | Scan your Harddisk
ping localhost -n 5 >nul

sfc /scannow

ping localhost -n 2 >nul

echo mencoba untuk memperbaiki dan menemukan Kesalahan pada Harddisk | try to fix and find problem in your harddisk

ping localhost -n 5 >nul

CHKDSK c: /r /f

goto :start

:sysinfo
systeminfo
pause
goto start

:wf

cls
echo.
echo  === WiFi Password Viewer ===
echo --------------------------------
echo Author :  Xnuvers007
echo Website :  https://mykingbee.blogspot.com
echo Github : https://github.com/Xnuvers007
echo Instagram : https://www.instagram.com/indradwi.25/
echo --------------------------------
echo.
echo 1 - View all saved WiFi profiles
echo 2 - View password for selected SSID
echo 3 - Go Back
echo.
set /p num="Enter Number: "
if %num%==1 goto show
if %num%==2 goto getpass
if %num%==3 goto back
goto wf

:back
goto start

:show
cls
echo.
echo  === WiFi Password Viewer ===
echo --------------------------------
echo Author :  Xnuvers007
echo Website :  https://mykingbee.blogspot.com
echo Github : https://github.com/Xnuvers007
echo Instagram : https://www.instagram.com/indradwi.25/
echo --------------------------------
echo.
netsh wlan show profiles
pause
goto wf

:getpass
cls
echo.
echo  === WiFi Password Viewer ===
echo --------------------------------
echo Author :  Xnuvers007
echo Website :  https://mykingbee.blogspot.com
echo Github : https://github.com/Xnuvers007
echo Instagram : https://www.instagram.com/indradwi.25/
echo --------------------------------
echo.
set /p ssid="Enter SSID Name: "
cls
echo.
echo  === WiFi Password Viewer ===
echo --------------------------------
echo Author :  Xnuvers007
echo Website :  https://mykingbee.blogspot.com
echo Github : https://github.com/Xnuvers007
echo Instagram : https://www.instagram.com/indradwi.25/
echo Donate : https://saweria.co/xnuvers007
echo --------------------------------
echo.
echo.
echo SSID Name:
netsh wlan show profile name="%ssid%" key=clear | findstr /a:4 "name"
echo.
echo Security mode:
netsh wlan show profile name="%ssid%" key=clear | findstr /a:4  "Authentication"
echo.
echo WiFi Password:
netsh wlan show profile name="%ssid%" key=clear | findstr /a:4 "Key"
echo.
echo  [41m*If results empty, Please run this program as Administrator and/or check your entered SSID name. [0m
pause>nul
goto wf

:youtube
@echo off

:yt
cls
echo  === Youtube Downloader ===
echo --------------------------------
echo Author :  Xnuvers007
echo Website :  https://mykingbee.blogspot.com
echo Github : https://github.com/Xnuvers007
echo Instagram : https://www.instagram.com/indradwi.25/
echo Donate : https://saweria.co/xnuvers007
echo --------------------------------
echo.
cd Setting
for /f "tokens=* delims=" %%x in (DirToSave.txt) do set dir=%%x
if %dir%== goto errset
for /f "tokens=* delims=" %%x in (DownloadCopy.txt) do set dow=%%x
if %dow%==Y goto yt2
if %dow%==y goto yt2
if %dow%=="" goto errset
for /f "tokens=* delims=" %%x in (Mp3_OR_Mp4.txt) do set mp=%%x
if %mp%==mp4 goto mp4
if %mp%==Mp4 goto mp4
if %mp%==mP4 goto mp4
if %mp%==MP4 goto mp4
if %mp%==video goto mp4
if %mp%==Video goto mp4
if %mp%==VIDEO goto mp4



goto yt1



:mp4
cd ..
cd Lib
set /p id="Enter video url: "
echo.
youtube-dl -F %id%
echo.
set /p qua="Select video quality: "
youtube-dl -f %qua% -o %dir%\%%(title)s.%%(ext)s %id%
echo.
pause
cd ..
goto yt



:yt2
cd ..
cd Lib
set /p id="Enter video url: "
youtube-dl --extract-audio --audio-format "mp3" --audio-quality 0 --youtube-skip-dash-manifest -o Download\%%(title)s.%%(ext)s %id%
youtube-dl --extract-audio --audio-format "mp3" --audio-quality 0 --youtube-skip-dash-manifest -o %dir%\%%(title)s.%%(ext)s %id%
pause
cd ..
goto yt

:yt1
cd ..
cd Lib
set /p id="Enter video url: "
youtube-dl --extract-audio --audio-format "mp3" --audio-quality 0 --youtube-skip-dash-manifest -o %dir%\%%(title)s.%%(ext)s %id%
pause
cd ..
goto yt











:errset
echo This is an empty file in the folder setting, please fill out correctly all the settings
echo.
pause
goto yt
