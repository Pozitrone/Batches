:: Basic file for creating folder structure inside Unity's Assets folder

FOR %%a in ("%cd%") do set "CurDir=%%~na"
IF "%CurDir%"=="Assets" (
    ECHO I am located in Assets... creating structure...

    MD "Prefabs"
    MD "Scripts/Interfaces"
    MD "Scripts/Installers"
    MD "Materials"
    MD "Scenes"
    MD "Images"
    MD "Icons"
    MD "Animations"
    MD "Shaders"
    MD "Resources"
    MD "Models"
    MD "Plugins"
    MD "SmallAssets"


    ECHO Press a key to delete me, or quit to abort
    PAUSE
    DEL "%~f0"
)

IF NOT "%CurDir%"=="Assets" (
    echo I am not located in Assets folder. Exitting.
)
PAUSE
