# PowerShell Script - Set Proxy and Port in Windows

## Description

This PowerShell script sets the proxy server and port for Internet Explorer in the Windows registry.

## Usage

1. Open PowerShell as an administrator.
2. Navigate to the directory where the script is saved.
3. Execute the script by entering its filename (e.g., .\set_proxy.ps1).

## Parameters

1. $proxyAddress: The address of the proxy server. Modify this variable with the desired proxy address.
2. $proxyPort: The port number of the proxy server. Modify this variable with the desired proxy port.

## Additional Configuration (Optional)

- $bypassList: A list of addresses that should bypass the proxy. Modify this variable with the desired bypass list.

## Notes

- The script modifies the registry settings for Internet Explorer, so the changes will affect Internet Explorer's proxy settings.
- The Internet Explorer process will be restarted to apply the changes.
- Make sure to run the script with administrative privileges.

# Batch Script - Set Proxy and Port in Windows

## Description

This batch script sets the proxy server and port for Internet Explorer in the Windows registry using the reg.exe command.

## Usage

1. Double-click on the script file (e.g., set_proxy.bat) or execute it from the command prompt.

## Parameters

1. proxyAddress: The address of the proxy server. Modify the proxyAddress variable in the script with the desired proxy address.
2. proxyPort: The port number of the proxy server. Modify the proxyPort variable in the script with the desired proxy port.

## Additional Configuration (Optional)

- bypassList: A list of addresses that should bypass the proxy. Modify the bypassList variable in the script with the desired bypass list.

## Notes

- The script modifies the registry settings for Internet Explorer, so the changes will affect Internet Explorer's proxy settings.
- The Internet Explorer process will be restarted to apply the changes.

# VBA Script - Set Proxy and Port in Windows

## Description

This VBA script, designed for Microsoft Excel, sets the proxy server and port for Internet Explorer in the Windows registry.

## Usage

1. Open Microsoft Excel.
2. Press ALT+F11 to open the Visual Basic Editor.
3. Insert a new module.
4. Copy and paste the script into the module.
5. Run the SetProxySettings macro from the Excel workbook or assign it to a button.

## Parameters

1. proxyAddress: The address of the proxy server. Modify the proxyAddress variable in the script with the desired proxy address.
2. proxyPort: The port number of the proxy server. Modify the proxyPort variable in the script with the desired proxy port.

## Additional Configuration (Optional)

- bypassList: A list of addresses that should bypass the proxy. Modify the bypassList variable in the script with the desired bypass list.

## Notes

- The script modifies the registry settings for Internet Explorer, so the changes will affect Internet Explorer's proxy settings.
- The Internet Explorer process will be restarted to apply the changes.
- This script is intended to be used within a Microsoft Excel workbook.