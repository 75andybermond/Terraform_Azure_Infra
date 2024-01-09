# Use Ubuntu 22.04 as base image
FROM ubuntu:22.04

# Set environment variables
ENV AZURE_CLI_VERSION=2.30.0
ENV TERRAFORM_VERSION=1.6.6

# Install dependencies
RUN apt-get update && \
    apt-get install -y curl unzip && \
    apt-get install -y openssh-client && \
    apt-get install -y vim

# Install Python
RUN apt-get install -y python3 python3-pip

# Install Azure CLI
RUN curl -sL https://aka.ms/InstallAzureCLIDeb | bash

# Install Terraform
RUN curl -o /tmp/terraform.zip -LO https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
    unzip /tmp/terraform.zip -d /usr/local/bin/ && \
    rm /tmp/terraform.zip