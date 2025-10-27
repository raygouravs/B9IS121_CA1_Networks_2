# Ansible Automation – Docker Installation on EC2

## Overview
This ansible script installs and configures Docker on an AWS EC2 instance. Docker is configured to start automatically on boot.


## Steps to Run
1. Update `inventory.ini` with the EC2 public IP and path to `.pem` file.
2. Test connection:
   
   ansible -i inventory.ini ec2 -m ping

3. Run playbook:

    ansible-playbook install_docker.yml


