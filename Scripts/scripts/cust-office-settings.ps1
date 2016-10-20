#Block signing into Office
mkdir -Force "HKCU:\software\policies\microsoft\office\16.0\common\signin"
Set-ItemProperty "HKCU:\software\policies\microsoft\office\16.0\common\signin" "signinoptions" 3
#Don't show OneDrive Sign In
mkdir -Force "HKCU:\software\policies\microsoft\office\16.0\common\general"
Set-ItemProperty "HKCU:\software\policies\microsoft\office\16.0\common\general" "skydrivesigninoption" 0
#Disable the Office Start screen for all Office applications
Set-ItemProperty "HKCU:\software\policies\microsoft\office\16.0\common\general" "disableboottoofficestart" 1
#Disable including screenshot with Office Feedback
mkdir -Force "HKCU:\software\policies\microsoft\office\16.0\common\feedback"
Set-ItemProperty "HKCU:\software\policies\microsoft\office\16.0\common\feedback" "includescreenshot" 0
#Disable automatically receive small updates to improve reliability
Set-ItemProperty "HKCU:\software\policies\microsoft\office\16.0\common" "updatereliabilitydata" 0
#Disable Customer Experience Improvement Program
Set-ItemProperty "HKCU:\software\policies\microsoft\office\16.0\common" "qmenable" 0
#Don't send Office Feedback
Set-ItemProperty "HKCU:\software\policies\microsoft\office\16.0\common\feedback" "enabled" 0
#Disable send personal information
Set-ItemProperty "HKCU:\software\policies\microsoft\office\16.0\common" "sendcustomerdata" 0
#Turn off telemetry data collection
mkdir -Force "HKCU:\software\policies\microsoft\office\16.0\osm"
Set-ItemProperty "HKCU:\software\policies\microsoft\office\16.0\osm" "enablelogging" 0
#Hide the Learn more about SharePoint Hyperlink
Set-ItemProperty "HKCU:\software\policies\microsoft\office\16.0\common\sharepointintegration" "hidelearnmorelink" 1
