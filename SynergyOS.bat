@echo off
title Simple Operating System
color 0A

:main_menu
cls
echo =======================================
echo            SIMPLE OS MAIN MENU
echo =======================================
echo 1. List Files
echo 2. Change Directory
echo 3. Create Directory
echo 4. Delete Directory
echo 5. Run Program
echo 6. Exit
echo =======================================
set /p choice=Please select an option (1-6):

if "%choice%"=="1" goto list_files
if "%choice%"=="2" goto change_directory
if "%choice%"=="3" goto create_directory
if "%choice%"=="4" goto delete_directory
if "%choice%"=="5" goto run_program
if "%choice%"=="6" goto exit
goto main_menu

:list_files
cls
echo =======================================
echo            LISTING FILES
echo =======================================
dir
pause
goto main_menu

:change_directory
cls
echo =======================================
echo            CHANGE DIRECTORY
echo =======================================
set /p directory=Enter directory path:
cd /d "%directory%" || (echo Invalid directory path. && pause)
goto main_menu

:create_directory
cls
echo =======================================
echo            CREATE DIRECTORY
echo =======================================
set /p directory=Enter new directory name:
mkdir "%directory%" || (echo Failed to create directory. && pause)
goto main_menu

:delete_directory
cls
echo =======================================
echo            DELETE DIRECTORY
echo =======================================
set /p directory=Enter directory name to delete:
rmdir /s /q "%directory%" || (echo Failed to delete directory. && pause)
goto main_menu

:run_program
cls
echo =======================================
echo            RUN PROGRAM
echo =======================================
set /p program=Enter program name or path:
"%program%" || (echo Failed to run program. && pause)
goto main_menu

:exit
cls
echo =======================================
echo            EXITING SIMPLE OS
echo =======================================
pause
exit
