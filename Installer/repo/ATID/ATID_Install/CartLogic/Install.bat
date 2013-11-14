REM Create by Joe Bennett, Cascade Engineering 3/29/2013
REM Installs or upgrades Cart Logic for ATID 870
IF EXIST "\Flash Disk\Start\HardReset\CartLogic" GOTO UPGRADE
cd ..
mkdir "\Flash Disk\Start\HardReset\CartLogic"
mkdir "\Flash Disk\Start\HardReset\CartLogic\CartLogic Program Files"
mkdir "\Flash Disk\Start\HardReset\CartLogic\CartLogic Reinstall"
mkdir  "\Flash Disk\Start\HardReset\CartLogic\Install SQL"
mkdir  "\Flash Disk\Start\HardReset\CartLogic\MobiClient"
mkdir "New Tickets"
mkdir "Completed Tickets"
mkdir "New Tickets"
mkdir "\Completed Tickets\Pictures"

MOVE "\CartLogic\Remote Tool\cerdisp2.exe" "\Windows\"
MOVE "\CartLogic\MobiClient\NET_XS_1000M.exe" "\Flash Disk\Start\HardReset\CartLogic\MobiClient"
COPY "\CartLogic\MobiClient\Mobi.lnk" "\Flash Disk\CopyFile\Desktop\"
COPY "\CartLogic\CartLogic Program Files\CartLogic.lnk"  "\Flash Disk\CopyFile\Desktop\"
COPY "\CartLogic\CartLogic Program Files\Install SQL.lnk"  "\Windows\Desktop"
MOVE "\CartLogic\CartLogic Program Files\CartLogic.lnk"  "\Flash Disk\CopyFile\Desktop\" 
MOVE "\CartLogic\CartLogic Program Files\Install SQL.lnk"  "\Flash Disk\CopyFile\Desktop\"
MOVE "\CartLogic\Install SQL\original_data\*.*" "\Flash Disk\Start\HardReset\CartLogic\Install SQL\orignial_data"

MOVE  "\CartLogic\Install SQL\*.*"  "\Flash Disk\Start\HardReset\CartLogic\Install SQL"
MOVE  "\CartLogic\CartLogic Reinstall\*.*" "\Flash Disk\Start\HardReset\CartLogic\CartLogic Reinstall"
MOVE "\CartLogic\CartLogic Program Files\*.*" "\Flash Disk\Start\HardReset\CartLogic\CartLogic Program Files\" 
MOVE "\CartLogic\MobiClient\NET_XS_1000M.exe" "\Flash Disk\Start\HardReset\CartLogic\MobiClient"

REM start "\Windows\wceload.exe" "\Flash Disk\Start\HardReset\CartLogic\Install SQL\sqlce.wce5.armv4i.CAB"


:UPGRADE
ECHO "upgrade"
REM "TODO create upgrade logic, remove all files from CartLogic Program Files, archive sql db, and replace with new software"