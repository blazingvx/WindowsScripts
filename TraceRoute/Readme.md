# Trace Route

## In this batch script:

- Set the target variable to the domain or IP address you want to trace.
- Set the maxHops variable to the maximum number of hops to trace.
- The script iterates through each hop using a for /l loop.
- For each hop, it retrieves the IP address using the tracert command and extracts it from the output.
- It then sends a single ping to the IP address and extracts the response time from the output.
- The hop information, including the IP address and response time, is displayed on the console.

## In this PowerShell script:

- The $target variable prompts the user to enter the domain name they want to trace.
- The $maxHops variable specifies the maximum number of hops to trace.
- The script iterates through each hop using a for loop.
- For each hop, it uses tracert to retrieve the IP address from the output.
- It then sends a single ping to the IP address and extracts the response time from the output.
- The hop information, including the IP address and response time, is displayed on the console.


## What is hop?

In the context of network communication, a "hop" refers to each intermediate network device (router) through which data packets pass on their way from the source to the destination. Each hop represents a point in the network where the packet is processed and forwarded towards its final destination.

Traceroute is a diagnostic tool used to trace the route that packets take from the source to the destination by incrementally increasing the "time-to-live" (TTL) value of the packets. Each time a packet encounters a router, the router decrements the TTL value by 1. When the TTL reaches zero, the router discards the packet and sends an ICMP "Time Exceeded" message back to the source. This allows the source to identify the router's IP address and measure the round-trip time (RTT) of the packet.

In the provided script, the `hop` variable represents the current hop number being traced. It starts from 1 and increments up to the maximum number of hops specified by the `maxHops` variable. The script performs a traceroute by sending ICMP packets with increasing TTL values, capturing the IP address and response time at each hop.