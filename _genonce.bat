@ECHO OFF
SET publisher_jar=publisher.jar
SET input_cache_path=%CD%\input-cache

rem ECHO Checking internet connection...
rem PING tx.fhir.org -n 1 -w 1000 | FINDSTR TTL && GOTO isonline
rem ECHO We're offline...
rem SET txoption=-tx n/a
rem GOTO igpublish

:isonline
ECHO We're online
SET txoption=

:igpublish

SET JAVA_TOOL_OPTIONS=-Dfile.encoding=UTF-8

IF EXIST "%input_cache_path%\%publisher_jar%" (
	JAVA -jar "%input_cache_path%\%publisher_jar%" -ig ig.ini %txoption% %*
) ELSE If exist "..\%publisher_jar%" (
	JAVA -jar "..\%publisher_jar%" -ig ig.ini %txoption% %*
) ELSE (
	ECHO IG Publisher NOT FOUND in input-cache or parent folder.  Please run _updatePublisher.  Aborting...
)

PAUSE