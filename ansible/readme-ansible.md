# Ansible Automation 

## Overview
These are some ansible scripts used to - 
a) install and configure Docker on an AWS EC2 instance. Docker is configured to start automatically on boot.
b) copy web app code files from local to EC2 for docker build and container deployment.
c) trigger docker build and container deployment process on the EC2 instance once the CICD pipeline is triggered on code push.



## Steps to Run (For docker installation & config on EC2 instance)
1. Update `inventory.ini` with the EC2 public IP and path to `.pem` file.
2. Test connection:
   
   ansible -i inventory.ini ec2 -m ping

3. Run playbook:

    ansible-playbook install_docker.yml


## Steps to Run (For docker container deployment from CICD pipeline on the self-hosted agent)
1. Update `inventory.ini` with - localhost ansible_connection=local
2. deploy_docker_container - this ansible playbook is then triggered from the CICD pipeline in Azure Devops after code checkout.
