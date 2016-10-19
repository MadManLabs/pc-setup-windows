echo "Disable Let Windows manage default printer"
Set-ItemProperty "HKCU:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Windows" "LegacyDefaultPrinterMode" 1

echo "Disable Windows tips and tricks"
mkdir -Force "HKCU:\SOFTWARE\Policies\Microsoft\Windows\CloudContent"
Set-ItemProperty "HKCU:\SOFTWARE\Policies\Microsoft\Windows\CloudContent" "ConfigureWindowsSpotlight" 2
Set-ItemProperty "HKCU:\SOFTWARE\Policies\Microsoft\Windows\CloudContent" "DisableThirdPartySuggestions" 1
Set-ItemProperty "HKCU:\SOFTWARE\Policies\Microsoft\Windows\CloudContent" "DisableWindowsSpotlightFeatures" 1
# HKLM:\Software\Policies\Microsoft\Windows\CloudContent!DisableWindowsConsumerFeatures

echo "This policy turns off the autocorrect misspelled words"
Set-ItemProperty "HKCU:\HKEY_CURRENT_USER\SOFTWARE\Microsoft\TabletTip\1.7" "EnableAutocorrection" 0
Set-ItemProperty "HKCU:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Windows" "TurnOffAutocorrectMisspelledWords" 1
#mkdir -Force "HKCU:\Software\Policies\Microsoft\Control Panel\International"
#Set-ItemProperty "HKCU:\Software\Policies\Microsoft\Control Panel\International" "TurnOffAutocorrectMisspelledWords" 1

#echo "Disable let apps on my other devices open apps and continue experiences on this device"
#Set-ItemProperty "HKLM:\Software\Policies\Microsoft\Windows\System" "EnableCdp" 0

echo "Disable Account Info"
mkdir -force "HKLM:\Software\Policies\Microsoft\Windows\AppPrivacy"
Set-ItemProperty "HKLM:\Software\Policies\Microsoft\Windows\AppPrivacy" "LetAppsAccessAccountInfo" 3

echo "Disable Feedback"
Set-ItemProperty "HKLM:\Software\Policies\Microsoft\Windows\DataCollection" "DoNotShowFeedbackNotifications" 1