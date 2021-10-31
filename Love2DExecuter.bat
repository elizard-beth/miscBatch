:: This executes a file known as main.lua as a LOVE file
:: Requires LOVE2D

@ECHO OFF
ECHO Begun at: %time% %date%
if exist temp_saves()else(MKDIR temp_saves)
COPY main.lua temp_saves
REN main.lua main.zip
REN main.zip main.love
main.love
DEL main.love
COPY temp_saves\main.lua %~dp0
DEL temp_saves\main.lua
ECHO Completed at: %time% %date%
PAUSE
