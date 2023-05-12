# Windows Proxy and Scripts Repository

Welcome to the Windows Proxy and Scripts Repository! This repository contains a collection of scripts for configuring proxy settings and performing various tasks on Windows machines. These scripts are intended to simplify the process of setting up and managing proxy configurations, as well as automating common tasks in the Windows environment.

## Repository Contents

The repository includes the following scripts:

- `set_proxy.ps1`: PowerShell script for setting the proxy server and port in Windows using registry modifications. It configures the proxy settings for Internet Explorer.
- `set_proxy.bat`: Batch script for setting the proxy server and port in Windows using the `reg.exe` command. It configures the proxy settings for Internet Explorer.
- `set_proxy.vba`: VBA script for Microsoft Excel that sets the proxy server and port in Windows using registry modifications. It configures the proxy settings for Internet Explorer.

Feel free to explore the scripts and adapt them to suit your specific needs.

## Usage

### PowerShell Script
1. Open PowerShell as an administrator.
2. Navigate to the directory where the `set_proxy.ps1` script is saved.
3. Execute the script by entering its filename (e.g., `.\set_proxy.ps1`).

### Batch Script
1. Double-click on the `set_proxy.bat` script file or execute it from the command prompt.

### VBA Script
1. Open Microsoft Excel.
2. Press `ALT+F11` to open the Visual Basic Editor.
3. Insert a new module.
4. Copy and paste the `set_proxy.vba` script into the module.
5. Run the `SetProxySettings` macro from the Excel workbook or assign it to a button.

Please note that these scripts are designed to configure the proxy settings for Internet Explorer. If you wish to apply proxy configurations to other applications, you may need to modify the scripts accordingly.

## Contribution

Contributions to this repository are welcome! If you have any improvements, bug fixes, or additional scripts related to Windows proxy settings or other Windows-related tasks, feel free to open a pull request. Please ensure that your contributions adhere to the repository's coding conventions and standards.

## License

The scripts in this repository are released under the [MIT License](LICENSE). You are free to use, modify, and distribute the scripts as per the terms of the license.

## Disclaimer

These scripts are provided as-is, without any warranty or guarantee. The repository maintainers and contributors will not be liable for any damages or issues arising from the use of these scripts. Use them at your own risk.

For further details and information, please refer to the individual script files.

Happy scripting!
