@echo off
title HWID Checker
mode con: cols=120 lines=40
color 6

echo.
echo ===================================
echo        System Hardware ID
echo ===================================
echo.

:: Get Hard Drive Serial Number
echo [*] HDD/SSD Serial Number:
wmic diskdrive get serialnumber
echo -----------------------------------

:: Get Motherboard Serial Number
echo [*] Motherboard Serial Number:
wmic baseboard get serialnumber
echo -----------------------------------

:: Get SMBIOS UUID
echo [*] SMBIOS UUID:
wmic path win32_computersystemproduct get uuid
echo -----------------------------------

:: Get GPU Information
echo [*] GPU Details:
wmic PATH Win32_VideoController GET Description,PNPDeviceID
echo -----------------------------------

:: Get RAM Serial Numbers
echo [*] RAM Serial Numbers:
wmic memorychip get partnumber, serialnumber
echo -----------------------------------

:: Get BIOS UUID
echo [*] BIOS UUID:
wmic csproduct get uuid
echo -----------------------------------

:: Get CPU ID
echo [*] CPU ID:
wmic cpu get processorid
echo -----------------------------------

:: Get MAC Address
echo [*] MAC Address:
getmac
echo -----------------------------------

:: Get Windows Serial and PC Name
echo [*] Windows OS Info:
wmic OS GET Caption,SerialNumber,CSName
echo -----------------------------------

pause
exit
