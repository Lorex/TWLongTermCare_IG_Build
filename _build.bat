@ECHO OFF
setlocal enabledelayedexpansion

SET "publisher_jar=publisher.jar"
SET "input_cache_path=%CD%\input-cache\"
SET "skipPrompts=false"
SET "upper_path=..\"
SET "default_choice=2"
SET "publisher_args="

:: Debugging statements to check jar file location
ECHO Checking for publisher.jar in %input_cache_path%
IF EXIST "%input_cache_path%%publisher_jar%" (
    SET "jar_location=%input_cache_path%%publisher_jar%"
    ECHO Found publisher.jar in input-cache
) ELSE (
    ECHO Checking for publisher.jar in %upper_path%
    IF EXIST "%upper_path%%publisher_jar%" (
        SET "jar_location=%upper_path%%publisher_jar%"
        ECHO Found publisher.jar in parent folder
    ) ELSE (
        SET "jar_location=not_found"
        SET "default_choice=1"
        ECHO publisher.jar not found in input-cache or parent folder
    )
)


:: Handle command-line argument to bypass the menu
IF NOT "%~1"=="" (
    IF /I "%~1"=="update" SET "userChoice=1"
    IF /I "%~1"=="build" SET "userChoice=2"
    IF /I "%~1"=="nosushi" SET "userChoice=3"
    IF /I "%~1"=="notx" (
        ECHO ERROR: Builds without terminology validation are no longer supported.
        EXIT /B 1
    )
    IF /I "%~1"=="jekyll" SET "userChoice=4"
    IF /I "%~1"=="clean" SET "userChoice=5"
    IF /I "%~1"=="exit" SET "userChoice=0"
    IF NOT DEFINED userChoice (
        ECHO ERROR: Unknown command.
        EXIT /B 1
    )
    SHIFT
    GOTO collectargs
)

echo ---------------------------------------------------------------
ECHO Checking internet connection...
curl --fail --silent --show-error --location --connect-timeout 10 --max-time 30 https://api.github.com/repos/HL7/fhir-ig-publisher/releases/latest --output NUL
IF ERRORLEVEL 1 (
    SET "online_status=false"
    SET "latest_version=unknown"
    ECHO Unable to check the latest Publisher release.
) ELSE (
    SET "online_status=true"
    FOR /F "tokens=2 delims=:" %%a IN ('curl --fail --silent --location --connect-timeout 10 --max-time 30 https://api.github.com/repos/HL7/fhir-ig-publisher/releases/latest ^| findstr "tag_name"') DO SET "latest_version=%%a"
    SET "latest_version=!latest_version:"=!"
    SET "latest_version=!latest_version: =!"
    SET "latest_version=!latest_version:~0,-1!"
)

echo ---------------------------------------------------------------


IF NOT "%jar_location%"=="not_found" (
    FOR /F "tokens=*" %%i IN ('java "-Dfile.encoding=UTF-8" -jar "%jar_location%" -v 2^>^&1') DO SET "publisher_version=%%i"
    SET "publisher_version=!publisher_version:"=!"
    ECHO Detected publisher version: !publisher_version!
) ELSE (
    SET "publisher_version=unknown"
    ECHO publisher.jar location is not found
)

ECHO Publisher version: !publisher_version!; Latest is !latest_version!

IF NOT "%online_status%"=="true" (
   ECHO We're offline.
) ELSE (
    IF NOT "!publisher_version!"=="!latest_version!" (
        ECHO An update is recommended.
        SET "default_choice=1"
    ) ELSE (
        ECHO Publisher is up to date.
        SET "default_choice=2"
    )
)

echo ---------------------------------------------------------------
echo.

echo Please select an option:
echo 1. Download or update publisher
echo 2. Build IG
echo 3. Build IG - no sushi
echo 4. Jekyll build
echo 5. Clean up temp directories
echo 0. Exit
:: echo [Press Enter for default (%default_choice%) or type an option number:]
echo.

:: Using CHOICE to handle input with timeout
:: ECHO [Enter=Continue, 1-7=Option, 0=Exit]
choice /C 123450 /N /CS /D %default_choice% /T 5 /M "Choose an option number or wait 5 seconds for default (%default_choice%):"
SET "userChoice=%ERRORLEVEL%"
IF "%userChoice%"=="6" SET "userChoice=0"
GOTO executeChoice

:collectargs
IF "%~1"=="" GOTO executeChoice
SET "publisher_args=%publisher_args% %1"
SHIFT
GOTO collectargs


:executeChoice
echo You selected: %userChoice%

IF "%userChoice%"=="1" GOTO downloadpublisher
IF "%userChoice%"=="2" GOTO publish_once
IF "%userChoice%"=="3" GOTO publish_nosushi
IF "%userChoice%"=="4" GOTO debugjekyll
IF "%userChoice%"=="5" GOTO clean
IF "%userChoice%"=="0" EXIT /B

EXIT /B 1

:debugjekyll
    echo Running Jekyll build...
    jekyll build -s temp/pages -d output
GOTO end


:clean
    echo Cleaning up directories...
    if exist ".\input-cache\publisher.jar" (
        echo Preserving publisher.jar and removing other files in .\input-cache...
        move ".\input-cache\publisher.jar" ".\"
        rmdir /s /q ".\input-cache"
        mkdir ".\input-cache"
        move ".\publisher.jar" ".\input-cache"
    ) else (
        if exist ".\input-cache\" (
            rmdir /s /q ".\input-cache"
        )
    )
    if exist ".\temp\" (
        rmdir /s /q ".\temp"
        echo Removed: .\temp
    )
    if exist ".\output\" (
        rmdir /s /q ".\output"
        echo Removed: .\output
    )
    if exist ".\template\" (
        rmdir /s /q ".\template"
        echo Removed: .\template
    )

GOTO end





:downloadpublisher
CALL "%~dp0_updatePublisher.bat" %publisher_args%
EXIT /B %ERRORLEVEL%

:publish_once
CALL "%~dp0_genonce.bat" %publisher_args%
EXIT /B %ERRORLEVEL%

:publish_nosushi
CALL "%~dp0_genonce.bat" -no-sushi %publisher_args%
EXIT /B %ERRORLEVEL%

:publish_continuous
CALL "%~dp0_genonce.bat" -watch %publisher_args%
EXIT /B %ERRORLEVEL%

:end

:: Pausing at the end


IF NOT "%skipPrompts%"=="true" (
  PAUSE
)
