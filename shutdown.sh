#!/bin/bash

# Replace with your Proxmox server IP address
proxmox_ip="127.0.0.1"

# Replace with your Proxmox username
proxmox_username="root"

# Replace with your Proxmox password
proxmox_password="calvin"

# Replace with the name of the virtual machine you want to shut down
vm_name="myvm"

# Connect to Proxmox and shut down the virtual machine
sshpass -p $proxmox_password ssh $proxmox_username@$proxmox_ip "qm shutdown $vm_name"
