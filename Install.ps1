<# chocolatey setup #> 
Set-ExecutionPolicy Bypass -Scope Process -Force; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1')); 

<# allowing globally confirmation #> 
choco feature enable -n=allowGlobalConfirmation;

<# programs to install #>
@(
"firefox"
,"googlechrome"
,"qbittorrent"
,"vlc"
,"winrar"
,"git"
,"jre8"
,"python3"
,"notepadplusplus"
,"zoom"
,"discord"
,"firacode"
,"winscp"
,"codeblocks"
,"obsidian"
,"autodesk-fusion360"
,"steam-client"
,"epicgameslauncher") + ($pins = @("vscode")) | ForEach-Object { choco install $_ };

<# avoiding future upgrades of these following programs. #> 
$pins | ForEach-Object { choco pin add -n="$_" }; 