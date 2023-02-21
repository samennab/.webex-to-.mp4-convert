@echo off
SET var=%cd%

echo ##############################################################################
echo ####                reading files from "videos" folder...                 ####
echo ##############################################################################

del tmpFile
timeout /t 10

cls

FOR %%f in (videos\*.webex) DO @echo "%var%\app\CiscoWebexConverter.exe" /force "%var%\%%f" >> tmpFile

echo del "%var%\tmpFile" >> tmpFile
echo cls >> tmpFile
echo echo ############################################################################## >> tmpFile
echo echo ####        The converting is finished, please check the files...         #### >> tmpFile
echo echo ####  If any mp4 file corrupted after converting please open a TAC case.  #### >> tmpFile
echo echo ####   Please attach the ".webex" file to the case, so we can check it.   #### >> tmpFile
echo echo ####   And if possible attach the Webex trace grabber file to the case.   #### >> tmpFile
echo echo ####             https://help.webex.com/article/WBX000026382              #### >> tmpFile
echo echo ####                                                                      #### >> tmpFile
echo echo ####                          Have a great day!                           #### >> tmpFile
echo echo ############################################################################## >> tmpFile
echo pause >> tmpFile
echo exit >> tmpFile

echo ##############################################################################
echo #### Converting ".webex" files to ".mp4" files, it may take some time...  ####
echo ####          Please wait till we finish the files converting...          ####
echo ##############################################################################

timeout /t 10
cls

echo ##############################################################################
echo #### Converting ... it depends on the file size to finish converting...   ####
echo ####      Please keep this window open till the convert is finished       ####
echo ##############################################################################
FOR /F "tokens=*" %%* IN (tmpFile) DO %%*


pause