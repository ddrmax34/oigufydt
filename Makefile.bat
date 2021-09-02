rem Pac Man Makefile
rem 
rem Open a "CMD.exe" in thhe folder of this file and run "Makefile.bat"
rem All versions build from the same source using the defines in the PACMAN.asm
rem The "PACMAN-ROKLAN-stripped.xex" is the reference from the orignal disk.
rem The assembly process creates an exact match.

if exist PACMAN.xex DEL PACMAN.xex
if exist *.lst DEL *.lst
if exist *.lab DEL *.lab
if exist *.atdbg DEL *.atdbg

mads -d:VERSION=1 PACMAN.asm -o:PACMAN-ORIGINAL.xex
mads -d:VERSION=2 PACMAN.asm -o:PACMAN-ROKLAN.xex
mads -d:VERSION=3 PACMAN.asm -o:PACMAN-ATARI82.xex
mads -d:VERSION=4 PACMAN.asm -o:PACMAN-DATASOFT.xex

mads -d:VERSION=1 -d:INTERMISSION_DEMO=1 PACMAN.asm -o:PACMAN-ORIGINAL-INTERMISSION-DEMO.xex


