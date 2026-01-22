@echo off

wsl --shutdown rancher-desktop
wsl --shutdown rancher-desktop-data

taskkill /im "Rancher Desktop.exe" /f
start "" "C:\Program Files\Rancher Desktop\Rancher Desktop.exe"
exit
