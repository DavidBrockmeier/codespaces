rd -Force -Recurse "C:\Program Files\WindowsPowerShell\Modules\Win10\"
mkdir -f "C:\Program Files\WindowsPowerShell\Modules\Win10\"
iwr https://raw.githubusercontent.com/Disassembler0/Win10-Initial-Setup-Script/master/Win10.psm1 -OutFile "C:\Program Files\WindowsPowerShell\Modules\Win10\Win10.psm1"
Import-Module "C:\Program Files\WindowsPowerShell\Modules\Win10\Win10.psm1"
DisableActivityHistory
DisableAdvertisingID
DisableAppSuggestions
DisableAutoplay
DisableAutorun
DisableCortana
DisableDiagTrack
DisableErrorReporting
DisableFastStartup
DisableFeedback
DisableMaintenanceWakeUp
DisableScriptHost
DisableSharedExperiences
DisableTailoredExperiences
DisableTelemetry
DisableUpdateAutoDownload
DisableUpdateRestart
DisableUWPBackgroundApps
DisableWAPPush
DisableWebLangList
DisableWiFiSense
EnableAdminShares
EnableDotNetStrongCrypto
EnableF8BootMenu
EnableHibernation
EnableIPv6
EnableNTFSLongPaths
EnableUpdateMSProducts
HideAccountProtectionWarn
SetCurrentNetworkPrivate
SetP2PUpdateLocal

powercfg /change standby-timeout-ac 0
Get-NetAdapterPowerManagement | Set-NetAdapterPowerManagement -WakeOnMagicPacket Enabled -WakeOnPattern Enabled