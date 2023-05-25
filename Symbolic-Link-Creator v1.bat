@echo off
SET modulepath=E:\mymodulepath
SET destination=%modulepath%\facets\java
SET fullOriginalPath=%modulepath%\facets\maven\src\main\java


:SYMBOLIC_LINK_CREATION
	MKLINK /D %fullOriginalPath% "%destination%\%foldername%"
	ECHO Symbolic link location     : %fullOriginalPath%
	GOTO SHUT_DOWN

:SHUT_DOWN
	ECHO --------- Done-----------------
	PAUSE
	EXIT
