$ErrorActionPreference = "SilentlyContinue"

# EnableLLDP;EnableLLMNR;EnableLLTD;EnableNetDevicesAutoInst;DisableHomeGroups;EnableNetBIOS;EnableIPv6;EnableRemoteDesktop;DisableMediaSharing
# Get-Service fdPHost,FDResPub | Set-Service -StartupType Automatic | Start-Service
# Get-NetAdapter | ? MediaConnectionState -eq Connected | Set-NetAdapterBinding -Enabled $true -ComponentID ms_lldp,ms_lltdio,ms_rspndr,ms_tcpip6
# New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\DNSClient" -Force | Out-Null
# Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\DNSClient" -Name "EnableMulticast" -Type DWord -Value 1

rd -Force -Recurse "C:\Program Files\WindowsPowerShell\Modules\Win10\" 
mkdir -f "C:\Program Files\WindowsPowerShell\Modules\Win10\"
#iwr -useb https://raw.githubusercontent.com/Ad3t0/windows/master/powershell-core/RDPWrapperInstall.ps1 | iex
iwr https://raw.githubusercontent.com/Disassembler0/Win10-Initial-Setup-Script/master/Win10.psm1 -OutFile "C:\Program Files\WindowsPowerShell\Modules\Win10\Win10.psm1"
Import-Module "C:\Program Files\WindowsPowerShell\Modules\Win10\Win10.psm1"

# DisableAutoplay
# DisableAutorun
# DisableCortana
# DisableFeedback
# UninstallThirdPartyBloat
DisableActivityHistory
DisableAdvertisingID
DisableAppSuggestions
DisableDiagTrack
DisableErrorReporting
DisableFastStartup
DisableMaintenanceWakeUp
DisableSharedExperiences
DisableTailoredExperiences
DisableTelemetry
DisableTelemetry
DisableUpdateAutoDownload
DisableUpdateRestart
DisableUWPBackgroundApps
DisableWAPPush
DisableWebSearch
DisableWiFiSense
EnableAdminShares
EnableDotNetStrongCrypto
EnableF8BootMenu
EnableHibernation
EnableIPv6
EnableLLDP
EnableLLMNR
EnableLLTD
EnableNetBIOS
EnableNTFSLongPaths
EnableScriptHost
EnableUpdateMSProducts
HideAccountProtectionWarn
SetCurrentNetworkPrivate
SetP2PUpdateLocal
SetUnknownNetworksPrivate

net use S: /delete
net use S: \\192.168.1.24\Scans /persistent:yes /user:guest

Enable-PSRemoting
winrm.cmd quickconfig -q
