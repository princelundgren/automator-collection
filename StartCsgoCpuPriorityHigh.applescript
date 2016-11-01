set myfilepath to "Mac OS:Applications:Counter-Strike Global Offensive"
tell application "Finder" to open myfilepath
delay 5
tell application "System Events" to set unixID to unix id of process "csgo_osx64"
do shell script ("renice -20 -p " & unixID) password "your password here" with administrator privileges
