# CI/CD Deployment on AWS using Terraform and GitHub Actions

## Overview

This project demonstrates an end-to-end DevOps workflow where
infrastructure is provisioned using Terraform and application
deployments are fully automated using GitHub Actions.

Any change pushed to the GitHub repository is automatically deployed to
an AWS EC2 instance without manual server access.

## Architecture Summary

-   Terraform provisions AWS infrastructure
-   EC2 instance runs Amazon Linux with nginx
-   GitHub Actions handles CI/CD
-   Application is deployed via SSH
-   nginx serves the application over HTTP

## Tech Stack

-   AWS EC2
-   Terraform
-   GitHub Actions
-   Nginx
-   Linux (Amazon Linux)
-   SSH
-   GitHub Secrets

## Project Structure

    ci-cd-project/
    ├── app/
    │   └── index.html
    ├── terraform/
    │   ├── provider.tf
    │   ├── ec2.tf
    │   ├── security_group.tf
    │   ├── variables.tf
    │   ├── outputs.tf
    ├── .github/
    │   └── workflows/
    │       └── deploy.yml
    ├── .gitignore
    └── README.md

## Infrastructure Provisioning

Terraform is used to provision:

-   EC2 instance
-   Security group allowing SSH and HTTP
-   SSH key pair for secure access

### Commands

    terraform init
    terraform plan
    terraform apply

## CI/CD Workflow

Trigger: - Push to main branch

Flow:

    git push
    → GitHub Actions
    → SSH into EC2
    → Deploy application
    → Reload nginx

## Secrets Management

-   EC2_HOST
-   EC2_USER
-   EC2_SSH_KEY

All secrets are stored securely in GitHub Actions Secrets.

## Application Deployment

-   Application files live in the app directory
-   Deployed to /usr/share/nginx/html
-   Served by nginx on port 80

## Cost Management

    terraform destroy

## Key Learnings

-   Infrastructure as Code
-   CI/CD automation
-   Linux permissions and nginx behavior
-   Secure deployments

## Author

Aditya Krish
