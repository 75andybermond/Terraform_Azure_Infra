Reproducible Terraform project with Azure
==========================================
This project is a simple example of how to use Terraform to create a simple infrastructure in Azure.

## Prerequisites
 - [Docker](https://www.docker.com/)
 - [OpenSSH](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-ssh)

## How to use

### 1. Connect to Azure
``` bash 
az login
```

### 2. Create your SSH key **OUTSIDE OF DOCKER**
``` bash
sudo ssh-keygen -t rsa &&

# Copy the public key to the directory mtcazurekey

"~/.ssh/mtcazurekey"
```
### 3. Launch Terraform
``` bash
terraform init && terraform apply
```

### 4. Connect to the VM
ctrl + shift + p -> Remote-SSH: Connect to Host -> Select latest host and ip adress

IP address infos are displayed in the output of terraform apply

