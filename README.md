# B9IS121 - Network Systems and Administration CA 2025
## Assessment Title: Automated Container deployment and Administration in the cloud

### 🎥 Project Demo Video: https://drive.google.com/file/d/1n7AADqljGfdfGTvNgdQgl54-kbbGOWxV/view

---

## Overview
This project is about automation of infrastructure provisioning, configuration, containerization, and deployment of a web application on AWS using:
- **Terraform** for infrastructure provisioning (EC2 instance, Security Group, SSH key-pair)
- **Ansible** for docker configuration management and container deployment on EC2
- **Docker** for containerization
- **Azure DevOps** for CI/CD pipeline automation

<img width="801" height="1321" alt="Devops-Arch-diagram-2" src="https://github.com/user-attachments/assets/2bc36528-6973-4023-bb7c-3c4ab5a05c45" />

---

## Folder Structure
B9IS121_CA1_Networks_2/
│
├── ansible/ # Ansible playbooks for configuration and deployment
├── app/ # Sample web app for deployment on AWS
├── terraform_aws/ # Terraform scripts for infrastructure provisioning on AWS
├── azure-pipelines.yml # CI/CD pipeline configuration
├── Dockerfile # Document Dockerfile purpose, build instructions, and container usage.
└── README.md # (this file)


---

## Workflow Summary

1. **Terraform** creates the EC2 instance and networking setup.
2. **Ansible** handles Docker installation and container deployment on the EC2.
3. **Docker** builds the docker image of the web app.
4. **Azure DevOps Pipeline** automates build and deployment on code check-in.

---

## Prerequisites

- Azure DevOps Account (with service connection to GitHub)
- AWS Account (with access keys)
- Terraform, Ansible, Docker installed locally
- SSH access to EC2 instance

---

## Getting Started

1. Run Terraform script to provision the EC2 instance
2. Use Ansible to configure EC2 and deploy the container  
3. Use Azure Pipeline for the CI/CD pipeline

Refer to each subfolder’s README for detailed setup instructions.

---

## Authors
- Gourav Sankar Ray (Student ID - 20070234)
- MSc. Information Systems with Computing – DBS
