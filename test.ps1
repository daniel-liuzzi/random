Set-ExecutionPolicy RemoteSigned -scope CurrentUser
& { Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh') }

scoop install 7zip git
reg import (Resolve-Path '~/scoop/apps/7zip/current/install-context.reg')

scoop bucket add extras
scoop bucket add nerd-fonts
scoop bucket add nonportable
