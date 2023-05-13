# Windows Scripts Repository

Welcome to the Windows Scripts Repository! This repository contains a collection of scripts for various Windows tasks, including network connectivity checks and proxy configuration management.

## Repository Contents

The repository is organized into the following components:

### 1. CheckNetwork

This component provides scripts to check network connectivity and ping the default gateway.

- `CheckInternet.bat`: A batch script that checks internet connectivity by pinging a reliable host.
- `CheckInternet.ps1`: A powershell script that checks internet connectivity by pinging a reliable host.
- `pingGateway.bat`: A batch script that retrieves the default gateway and continuously pings it.
- `pingGateway.ps1`: A powershell script that retrieves the default gateway and continuously pings it.

### 2. Proxy

This component contains scripts related to proxy configuration management.

- `Readme.md`: Documentation specific to the Proxy component.
- `set_proxy.bat`: A batch script that sets the proxy server and port in Windows using the `reg.exe` command.
- `set_proxy.ps1`: A PowerShell script that sets the proxy server and port in Windows using registry modifications.
- `set_proxy.vba`: A VBA script for Microsoft Excel that sets the proxy server and port in Windows using registry modifications.

### 3. ProxyImport-Export

This component provides scripts for exporting and importing proxy configurations.

- `config_proxy.txt`: A sample file used for exporting and importing proxy configurations.
- `proxyimport_export.bat`: A batch script that allows for the export and import of proxy configurations.

## Usage

### PowerShell Script
1. Open PowerShell as an administrator.
2. Navigate to the directory where the `*.ps1` script is saved.
3. Execute the script by entering its filename (e.g., `.\*.ps1`).

### Batch Script
1. Double-click on the `*.bat` script file or execute it from the command prompt.

### VBA Script
1. Open Microsoft Excel.
2. Press `ALT+F11` to open the Visual Basic Editor.
3. Insert a new module.
4. Copy and paste the `*.vba` script into the module.
5. Run the `SetProxySettings` macro from the Excel workbook or assign it to a button.

Refer to the individual component folders for detailed instructions on how to use the scripts within each component.

## Contribution

Contributions to this repository are welcome! If you have improvements, bug fixes, or additional scripts related to Windows tasks, feel free to open a pull request. Please ensure that your contributions adhere to the repository's guidelines and standards.

## License

The scripts in this repository are released under the [MIT License](LICENSE). You are free to use, modify, and distribute the scripts as per the terms of the license.

## Disclaimer

The scripts are provided as-is, without any warranty or guarantee. The repository maintainers and contributors will not be liable for any damages or issues arising from the use of these scripts. Use them at your own risk.

For further details and information, please refer to the individual script files and their respective documentation.

Happy scripting!