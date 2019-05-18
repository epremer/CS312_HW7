CS 312 HW 7 Manual
Group Members: Lizz Premer, Jacob Dugan, Haofeng Tian, Miao Zhou

File Name
	Script: hw7.sh
	Playbook: webserver.yaml
 
Pre-Instructions:
	1. Make sure that your pfSense_Reference VM's Network settings are:
		a. Adapter 1 is set to NAT
		b. Adapter 2 is set to Internal Network, CS312LAN
	2. Make sure all other VMs' Network settings are set to Internal Network, CS312LAN

Instructions:
	1. Start the pfSense_Reference VM
	2. Wait until router VM is up
	3. Start the CentOS_CLI_Reference VM
	4. Start 4 Alpine_Reference VMs
	5. In each Alpine VM, use command "ip addr" to retrieve each respective IP address
	6. Make sure the CentOS VM has the “hw7.sh”, “ansible-index.html”, “webserver.yaml”, and the “hosts.ini” files.
	7. Run the “sh hw7.sh” command
	8. The script will prompt for creating the ssh key, press enter on these three prompts so it gets default values. If there are already keys generated, you will also have to enter “y” once
	9. Enter the IP addresses of the four Alpine VMs
	10. You will have to enter the passwords for the four Alpine VMs, you may also have to enter “yes” if it is the first time running the script.
	11. If at any point the Alpine VM’s IP addresses change after running the script once, the hosts.ini will need to be reset.


Additional files:
	Host file: hosts.ini
	HTML file: ansible-index.html
