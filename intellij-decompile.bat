@echo off
setlocal EnableDelayedExpansion

REM Set the paths for IntelliJ IDEA's JDK and java-decompiler.jar
set IDEA_JDK="C:\Users\TFX5470H\AppData\Local\Programs\IntelliJ IDEA Ultimate\jbr\bin\java.exe"
set DECOMPILER_JAR="C:\Users\TFX5470H\AppData\Local\Programs\IntelliJ IDEA Ultimate\plugins\java-decompiler\lib\java-decompiler.jar"

REM Display usage information if no arguments are provided
if "%~1"=="" (
    echo Usage:
    echo   1. Run without arguments and follow the prompts:
    echo      decompile.bat
    echo   2. Run with arguments:
    echo      decompile.bat "path\to\your.jar" "path\to\target\directory"
    echo.
    echo Example:
    echo   decompile.bat "C:\MyJars\app.jar" "C:\Decompiled"
    echo.
    
    REM No arguments, get user input
    set /p JAR_PATH=Enter the path of the JAR file to decompile: 
    set /p TARGET_DIR=Enter the name of the directory to save decompiled results default current directory: 
) else (
    REM Use provided arguments
    set JAR_PATH=%~1
    set TARGET_DIR=%~2
)

REM Check if the input path exists
if not exist "!JAR_PATH!" (
    echo The specified JAR file does not exist.
    pause
    goto :eof
)

REM If TARGET_DIR is not provided, use current directory
if "!TARGET_DIR!"=="" (
    set "TARGET_DIR=%CD%"
    echo Target directory not specified. Using current directory: !TARGET_DIR!
)

REM Create target directory if it doesn't exist
if not exist "!TARGET_DIR!" mkdir "!TARGET_DIR!"

REM Run ConsoleDecompiler with IntelliJ IDEA's JDK
%IDEA_JDK% -cp %DECOMPILER_JAR% org.jetbrains.java.decompiler.main.decompiler.ConsoleDecompiler -dgs=true "!JAR_PATH!" "!TARGET_DIR!"

if %errorlevel% neq 0 (
    echo An error occurred during decompilation.
) else (
    echo Decompilation completed. Results are saved in the !TARGET_DIR! directory.
)

pause

endlocal