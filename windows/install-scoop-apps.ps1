scoop install git

scoop bucket add extras
scoop bucket add versions
scoop bucket add games

scoop install main/7zip
scoop install extras/vscode
scoop install extras/googlechrome
scoop install extras/bitwarden
scoop install extras/obsidian
scoop install extras/discord
scoop install extras/spotify
scoop install extras/nextcloud
scoop install extras/thunderbird
scoop install extras/lazygit
scoop install extras/hwinfo
scoop install versions/steam
sudo scoop install games/epic-games-launcher
scoop install games/minecraft

reg import "$HOME\scoop\apps\7zip\current\install-context.reg"
reg import "$HOME\scoop\apps\vscode\current\install-context.reg"
