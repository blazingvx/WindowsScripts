Sub SetProxySettings()
    Dim proxyAddress As String
    Dim proxyPort As Integer
    Dim bypassList As String
    
    proxyAddress = "proxy.example.com"
    proxyPort = 8080
    bypassList = "*.example.com;<local>"
    
    ' Set proxy settings
    With CreateObject("WScript.Shell")
        .RegWrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ProxyEnable", 1, "REG_DWORD"
        .RegWrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ProxyServer", proxyAddress & ":" & proxyPort, "REG_SZ"
        .RegWrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ProxyOverride", bypassList, "REG_SZ"
    End With
    
    ' Refresh Internet Explorer settings
    With CreateObject("Shell.Application")
        .ShellExecute "iexplore.exe", "-extoff", "", "", 1
        .ShellExecute "taskkill", "/f /im iexplore.exe", "", "", 0
    End With
    
    MsgBox "Proxy settings have been updated.", vbInformation
End Sub