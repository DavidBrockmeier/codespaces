rd -Force -Recurse "C:\Program Files\WindowsPowerShell\Modules\Win10\"
mkdir -f "C:\Program Files\WindowsPowerShell\Modules\Win10\"
iwr https://raw.githubusercontent.com/Disassembler0/Win10-Initial-Setup-Script/master/Win10.psm1 -OutFile "C:\Program Files\WindowsPowerShell\Modules\Win10\Win10.psm1"
EnableIPv6
EnableAdminShares