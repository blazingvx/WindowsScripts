# Check Network and Ping Gateway Scripts

The CheckNetwork and Ping Gateway scripts are designed to monitor network connectivity and ping the default gateway respectively. These scripts are intended for Windows operating systems.

## Check Network Script

The CheckNetwork script allows you to monitor network connectivity and check if an internet connection is active. Here's how to use it:

1. Run the script.
2. The script will continuously check the network connection and display the status in the console.
3. If the network connection is active, the script will display "Network connection is active."
4. If the network connection is down, the script will display "Network connection is down."
5. The script will continue to check the network connection at regular intervals.

Please note the following details about the CheckNetwork script:

- The script uses the `ping` command to check network connectivity by pinging a reliable external server (in this case, `google.com`).
- The `%errorlevel%` variable is used to determine the success or failure of the ping command.
- You can customize the script by modifying the ping target or adjusting the interval between network checks.

## Ping Gateway Script

The Ping Gateway script allows you to ping the default gateway, helping you verify connectivity to your local network. Follow these steps to use it:

1. Run the script.
2. The script will determine the default gateway and display its IP address.
3. The script will then start pinging the default gateway continuously.
4. The ping results will be displayed in the console, providing information on the response time and any timeouts.

Here are some additional details about the Ping Gateway script:

- The script retrieves the default gateway IP address from the Windows routing table.
- The `ping` command is used to send ICMP echo requests to the default gateway.
- The script will continue pinging the gateway until you manually terminate it.

## Prerequisites

- These scripts require a Windows operating system.
- Ensure that you have the necessary permissions to run batch scripts on your system.