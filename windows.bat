@ECHO off

//Automatically Run As Administrator

setlocal EnableDelayedExpansion

Title Windows Command Prompt for Newbie
 
PUSHD %~DP0 & cd /d "%~dp0"
%1 %2
mshta vbscript:createobject("shell.application").shellexecute("%~s0","goto :runas","","runas",1)(window.close)&goto :eof
:runas
// Run As Administrator
// color b
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

echo update 12 Feb 2022 at 4:44 PM

@echo.
echo CHANGELOG:
@echo.
echo 1. Adding Defragment for optimization PC
echo 2. Mode Blind or No Blind with Color
echo 3. Donate for Me :3 hehe
echo 4. Adding Feature ChMac (Change Mac Address/IP Address)
@echo.

echo enter for continue
pause

:Blin
echo.
echo Are you Blind with color or no ? [Y/n] :
set /p sy=" Blind or No ? : "
if '%sy%'=='Y' goto :blind
if '%sy%'=='y' goto :blind
if '%sy%'=='N' goto :NoBlind
if '%sy%'=='n' goto :NoBlind
echo "%sy%" Invalid, try again | gagal, coba lagi
echo.
goto :Blin

:NoBlind
color 0B
goto start

:blind
color 6
goto start

:start
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
echo 8. Show windows version
echo 9. Microsoft Info Spec your PC
echo A. Hidden and unhidden folder
echo B. Network Statistics
echo C. Trace Route
echo D. Donate Programmer/Author
echo E. Chmac (Change Mac Address, etc.) from Wandersick

@echo.

set /p choice="Menu : "

cls

if '%choice%'=='1' goto :bat
if '%choice%'=='2' goto :remo
if '%choice%'=='3' goto :netw
if '%choice%'=='4' goto :sc
if '%choice%'=='5' goto :sysinfo
if '%choice%'=='0' goto :exit
if '%choice%'=='6' goto :wf
if '%choice%'=='7' goto :youtube
if '%choice%'=='8' goto :version
if '%choice%'=='9' goto :msinfo32
if '%choice%'=='A' goto :attrib
if '%choice%'=='a' goto :attrib
if '%choice%'=='B' goto :netstat
if '%choice%'=='b' goto :netstat
if '%choice%'=='C' goto :tracert
if '%choice%'=='c' goto :tracert
if '%choice%'=='D' goto :Donate
if '%choice%'=='d' goto :Donate
if '%choice%'=='e' goto :ChMacss
if '%choice%'=='E' goto :ChMacss
echo "%choice%" Invalid, try again | gagal, coba lagi

echo.
goto :start

// Echo execution completed, any key to exit
 
// pause >nul
// exit

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
echo Melakukan Defragmenting | optimizing and defragmenting all Connected Storage Drives
ping localhost -n 5 >nul
echo.
defrag /c /a /o /u

ping localhost -n 2 >nul

echo Melakukan Scanning Harddisk | Scan your Harddisk
ping localhost -n 5 >nul
echo.
sfc /scannow

ping localhost -n 2 >nul

echo mencoba untuk memperbaiki dan menemukan Kesalahan pada Harddisk | try to fix and find problem in your harddisk
ping localhost -n 5 >nul
echo.
CHKDSK c: /r /f

echo.
echo Done u can go to back to start
pause

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

:version
echo your Windows version is
@echo.
ver
@echo.
pause
goto start

:msinfo32
msinfo32
@echo.
pause
goto start

:attrib
echo the folder hidden and unhidden named Xnuvers007 in C:\Xnuvers007
echo.
echo enter to continue
pause
if not exist "C:\Xnuvers007" md "C:\Xnuvers007"
set ask=
set /p ask="Do you Want to show / hidden ? S/H : "
if not '%ask%'=='' set ask=%ask:~0,1%
if '%ask%'=='S' goto :show
if '%ask%'=='s' goto :show
if '%ask%'=='h' goto :hidden
if '%ask%'=='H' goto :hidden
echo "%ask%" Invalid, try again | gagal, coba lagi

:show
attrib -h -s -r "C:\Xnuvers007"
echo the folder has been showed/unhidden
@echo.
pause
goto start

:hidden
attrib +h +s +r "C:\Xnuvers007"
echo the folder has been hidden
@echo.
pausenote
goto start

:netstat
echo wait until finished
@echo.
netstat
pause
goto start

:tracert
echo this is menu for trace route your network
@echo.
echo ============ LISTS ===============
echo	2	Normal (Recommended)
echo	4	Force using IPv4.
echo	6	Force using IPv6.
echo ==================================
@echo.
set /p tra="Choice : "
if '%tra%'=='2' goto :ip
if '%tra%'=='4' goto :ip4
if '%tra%'=='6' goto :ip6
echo "%tra%" Invalid, try again | gagal, coba lagi

:ip
echo wait until finished
@echo.
set /p tar="enter the target : "
tracert %tar%
@echo.
pause
goto start

:ip4
echo wait until finished
@echo.
set /p tar2="enter the target : "
tracert %tar2% -4
@echo.
pause
goto start

:ip6
echo wait until finished
@echo.
set tar3=
set /p tar3="enter the target : "
if not'%tar3%'=='' set tar3=%tar3:~0,1%
tracert %tar3% -6
@echo
pause
goto start

:ChMacss
chmac.bat
echo.
pause
exit

:Donate
echo u want me to open browser ?
echo 1. Firefox
echo 2. Edge
echo 3. Chrome
echo 4. Back To Start
echo 5. Exit

set pilihan=
set /p pilihan="Menu : "
if not '%pilihan%'=='' set pilihan=%pilihan:~0,1%
if '%pilihan%'=='1' goto :Fi
if '%pilihan%'=='2' goto :Ed
if '%pilihan%'=='3' goto :Ch
if '%pilihan%'=='4' goto :start
if '%pilihan%'=='5' goto :exit
echo "%pilihan%" Invalid, try again | gagal, coba lagi

echo.
goto :Donate

:Fi
start firefox https://saweria.co/Xnuvers007
start firefox https://trakteer.id/Xnuvers007
goto start

:Ed
start msedge https://saweria.co/Xnuvers007
start msedge https://trakteer.id/Xnuvers007
goto start

:Ch
start chrome https://saweria.co/Xnuvers007
start chrome https://trakteer.id/Xnuvers007
goto start

:exit
pause
exit

