@ECHO OFF
SETLOCAL
SET "publisher=%CD%\input-cache\publisher.jar"
SET "tx_server=https://tx.fhir.org"

:parseargs
IF "%~1"=="" GOTO checkpublisher
IF /I "%~1"=="-tx" (
    IF NOT "%~2"=="%tx_server%" IF NOT "%~2"=="%tx_server%/" (
        ECHO ERROR: This project requires terminology validation at %tx_server%.
        EXIT /B 1
    )
    SHIFT
)
SHIFT
GOTO parseargs

:checkpublisher
IF EXIST "%publisher%" GOTO checkconnection
SET "publisher=..\publisher.jar"
IF EXIST "%publisher%" GOTO checkconnection
ECHO ERROR: IG Publisher not found. Run _updatePublisher.bat first.
EXIT /B 1

:checkconnection
ECHO Checking terminology server: %tx_server%
curl --fail --silent --show-error --location --connect-timeout 10 --max-time 30 "%tx_server%/r4/metadata" --output NUL
IF ERRORLEVEL 1 (
    ECHO ERROR: Terminology server is unavailable. Build stopped; validation will not be skipped.
    EXIT /B 1
)

java -Dfile.encoding=UTF-8 -jar "%publisher%" -ig . -tx "%tx_server%" %*
EXIT /B %ERRORLEVEL%
