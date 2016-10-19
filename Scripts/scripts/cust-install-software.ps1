echo "Install Chocolatey"
iwr https://chocolatey.org/install.ps1 -UseBasicParsing | iex
#Install packages
C:\ProgramData\chocolatey\bin\choco install firefox thunderbird paint.net -y
C:\ProgramData\chocolatey\bin\choco install teamviewer_qs.portable -s C:\Scripts\Packages\ -y


