## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

(Images/Azure_Network_diagram.drawio.png)

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the Filebeat-playbook.yml file may be used to install only certain pieces of it, such as Filebeat.

  - _TODO: Enter the playbook file._

This document contains the following details:
- Description of the Topology
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly available, in addition to restricting access to the network.

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the data and system logs.

The configuration details of each machine may be found below.
_Note: Use the [Markdown Table Generator](http://www.tablesgenerator.com/markdown_tables) to add/remove values from the table_.

| Name     | Function | IP Address | Operating System  |
|----------|----------|------------|-------------------|
| Jump Box |Gateway   | 10.0.0.1   | Linux Ubuntu20.04 |
| Web 1    |Web Server| 10.0.0.5   | Linux Ubuntu 20.04|
| Web 2    |Web Server| 10.0.0.6   | Linux Ubuntu 20.04|
| ELK      |ELK Stack | 10.1.0.5   | Linux Ubuntu 20.04|

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the Jump Box Provisioner machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
-220.233.123.69

Machines within the network can only be accessed by the Jump Box Provisioner:
-10.0.0.1

A summary of the access policies in place can be found in the table below.

| Name     | Publicly Accessible | Allowed IP Addresses |
|----------|---------------------|----------------------|
| Jump Box | No                  | 220.233.123.69       |
| Web-1    | No                  | 10.0.0.1             |
| Web-2    | No                  | 10.0.0.1             |
| ELK      | No                  | 10.0.0.1             |

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous as the stack can be recreated easily at will.

The playbook implements the following tasks:
- Install docker.io
- Install pip3
- Install Docker python module
- Increase virtual memory
- Download and launch docker

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

(Images/dockerpsoutput.png)

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
-Web-1 10.0.0.5
-Web-2 10.0.0.6 

We have installed the following Beats on these machines:
-Filebeat
-Metricbeat

These Beats allow us to collect the following information from each machine:
-Filebeat: Monitors log files and collects log events.
-Metricbeat: Monitors the metrics of the operating system and any services running on the server.


### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the ELK-playbook.yml file to etc/ansible.
- Update the host file to include your ELK server IP
- Run the playbook, and navigate to http://<elk-server-ip>:5601/app/kibana to check that the installation worked as expected.