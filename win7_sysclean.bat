REM Disable unnecessary services

sc config wlansvc start= disabled
sc config WwanSvc start= disabled
sc config TapiSrv start= disabled
sc config SSDPSRV start= disabled
sc config RemoteRegistry start= disabled
sc config wscsvc start= disabled
sc config Schedule start= disabled
sc config Themes start= disabled
sc config wercplsupport start= disabled
sc config WerSvc start= disabled
sc config NlaSvc start= disabled
sc config BITS start= disabled
sc config UxSms start= disabled
sc config FDResPub start= disabled
sc config HomeGroupListener start= disabled
sc config HomeGroupProvider start= disabled
sc config WinDefend start= disabled
sc config BDESVC start= disabled
sc config wbengine start= disabled
sc config iphlpsvc start= disabled
sc config MSiSCSI start= disabled
sc config swprv start= disabled
sc config SstpSvc start= disabled
sc config upnphost start= disabled
sc config VSS start= disabled
sc config SDRSVC start= disabled
sc config MpsSvc start= disabled
sc config wscsvc start= disabled
sc config ShellHWDetection start= disabled

REM Tweak registry settings
REGEDIT.EXE /S win7_sysclean_reg.reg

REM Tweak TCP settings
netsh interface tcp set global autotuning= disabled

REM Disk opschonen
cleanmgr.exe /d C

REM Disk defragmenteren
defrag C: /V /H 

REM Disable NTFS last accessed option
fsutil behavior set disablelastaccess 1

pause
