@echo off

pushd "%~dp0.."

echo "+-----------------------------------------+"
echo "|      Install Chocolatey & packages      |"
echo "+-----------------------------------------+"

:: chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

:: Utils
choco install -y microsoft-windows-terminal
choco install -y googlechrome
choco install -y keepass
choco install -y chromelpass-chrome
choco install -y adobereader
choco install -y rapidee

:: Code editors & IDE
choco install -y vscode
choco install -y notepad2-mod
choco install -y jetbrains-rider

:: Git
choco install -y git
choco install -y git-lfs
choco install -y tortoisegit

:: Java
choco install -y oraclejdk

:: Android
choco install -y android-studio

:: Unity
choco install -y unity-hub

:: Languages
choco install -y python
choco install -y nodejs

:: Other tools
choco install -y docker
choco install -y jenkins
choco install -y wsl

:: Import vscode keybindings
echo "+-------------------------------------------------------------+"
echo "|      Import VSCode keybindings from ./settings/vscode/      |"
echo "+-------------------------------------------------------------+"
copy .\settings\vscode\keybindings.win.json %APPDATA%\Code\User\keybindings.json
copy .\settings\vscode\settings.win.json %APPDATA%\Code\User\settings.json

popd
