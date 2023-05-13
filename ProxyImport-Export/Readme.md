# Proxy Configuration Export/Import Script

This script allows you to export and import proxy configuration settings in Windows.

## Usage

1. Run the script.
2. Choose an option from the main menu by entering the corresponding number:
   - **1. Export Proxy Configuration**: Export the current proxy configuration settings.
   - **2. Import Proxy Configuration**: Import proxy configuration settings from a file.
   - **3. Exit**: Terminate the script.
3. Follow the instructions provided by the script.

## Instructions

### Export Proxy Configuration

Choose the "Export Proxy Configuration" option to export the current proxy configuration settings. The script will export the settings to a file named `config_proxy.txt`.

### Import Proxy Configuration

Choose the "Import Proxy Configuration" option to import proxy configuration settings from a file. The script will prompt you to specify the file to import (`config_proxy.txt`). It will then import the settings from the file into the Windows registry.

## Note

- This script works by exporting and importing the proxy configuration settings from the Windows registry (`HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings`).
- Ensure that you have the necessary permissions to access and modify the Windows registry.
- The exported proxy configuration file (`config_proxy.txt`) will be overwritten if it already exists during the export process.