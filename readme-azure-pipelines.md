## Azure CICD Pipeline YAML configuration

# Overview
This YAML file defines the CI/CD pipeline that automates:
1. Building the Docker image after pulling latest code
2. Running Ansible playbook to deploy the container to EC2.

# Steps to Run
This CICD pipeline is triggered on code push to main branch of the git repo on the self hosted Azure Devops agent.