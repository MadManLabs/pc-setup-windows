# install fonts
$Fonts = 0x14
$Path = "C:\Scripts\fonts"
$objShell = New-Object -ComObject Shell.Application
$objFolder = $objShell.Namespace($Fonts)
#New-Item $Path -type directory
#Copy-Item "f:\NewFontsForDeployment\*" $Path
$Fontdir = dir $Path
foreach($File in $Fontdir) {
  $objFolder.CopyHere($File.fullname)
}
remove-item $Path -recurse