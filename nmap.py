import nmap

# Initialize the nmap object
nm = nmap.PortScanner()

# Define the network range to scan
network_range = "127.0.0.1"

# Perform the scan, using the '-O' flag for OS detection and the '-sS' flag for a SYN scan
nm.scan(hosts=network_range, arguments="-O -sS")

# Iterate through the hosts in the scan results
for host in nm.all_hosts():
    print(f"Host {host} is running {nm[host].os_fingerprint()}")
