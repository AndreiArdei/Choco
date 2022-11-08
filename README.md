# choco-recipe 

This repository contains a script to install the applications needed in a new PC. I'm using [Chocolatey](https://chocolatey.org) which is a package manager and allows you install applications easily from the command line, and scripting all turned out to be an obvious and lazy choice.

You must open PowerShell in administrator mode and run the following command: 

```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/AndreiArdei/Choco/master/Install.ps1'));
```