function Install-Scoop {
    # https://scoop.sh/
    Set-ExecutionPolicy RemoteSigned -scope CurrentUser
    Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')

    # Git is required for buckets. Run 'scoop install git' and try again.
    scoop install git

    # Add scoop buckets
    scoop bucket add extras
    scoop bucket add nerd-fonts
    scoop bucket add nonportable
}

Install-Scoop
