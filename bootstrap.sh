#!/bin/bash

# Configure Proxy
echo "Configuring Proxy..."
git clone https://gist.github.com/8bb74db0c2d2bc26165ddebd4d4c5a09.git
source 8bb74db0c2d2bc26165ddebd4d4c5a09/unix-script-configure-proxy.sh
rm -rf 8bb74db0c2d2bc26165ddebd4d4c5a09

# Configure DNS
echo "Configuring DNS..."
git clone https://github.com/zifamathebula/shell-script-fix-wsl2-dns-resolution.git
cd shell-script-fix-wsl2-dns-resolution
source wsl-startup.sh
cd ..

# Update system
echo "Updating system..."
sudo apt-get update

# Install Linux CLI Utilities
echo "Installing Linux CLI Utilities..."
sudo apt-get install -y wget curl tar unzip jq htop net-tools

# Install Developer Tools
read -p "Do you want to install Developer Tools? (y/n, default: y): " install_dev_tools
install_dev_tools=${install_dev_tools:-y}

if [[ $install_dev_tools == "y" ]]; then
  echo "Installing Developer Tools..."

  # Git
  sudo apt-get install -y git

  # Java
  java_version=$(java -version 2>&1 | awk -F '"' '/version/ {print $2}')
  if [[ $java_version != "20."* ]]; then
    sudo apt-get install -y openjdk-20-jdk
  else
    echo "Java 20 is already installed."
  fi

  # Maven
  if ! command -v mvn &> /dev/null; then
    sudo apt-get install -y maven
  else
    echo "Maven is already installed."
  fi

  # Python
  sudo apt-get install -y python3 python3-pip

  # K9s
  sudo snap install k9s

  # AWS CLI
  if ! command -v aws &> /dev/null; then
    curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
    unzip awscliv2.zip
    sudo ./aws/install
    rm -rf awscliv2.zip aws
  else
    echo "AWS CLI is already installed."
  fi

  # Kubectl
  kubectl_version=$(kubectl version --client --short | awk -F '[: ]+' '/Client Version/ {print $3}')
  if [[ $kubectl_version != "v1.25.6" ]]; then
    curl -LO "https://storage.googleapis.com/kubernetes-release/release/v1.25.6/bin/linux/amd64/kubectl"
    chmod +x kubectl
    sudo mv kubectl /usr/local/bin/
  else
    echo "Kubectl v1.25.6 is already installed."
  fi

  # Kubeseal
  kubeseal_version=$(kubeseal --version 2>&1 | awk -F '[: ]+' '{print $3}')
  if [[ $kubeseal_version != "v0.19.4" ]]; then
    sudo snap install kubeseal --classic
  else
    echo "Kubeseal v0.19.4 is already installed."
  fi

  # Terraform
  terraform_version=$(terraform --version 2>&1 | awk -F '[: ]+' '/Terraform/ {print $2}')
  if [[ $terraform_version != "v1.3.4" ]]; then
    wget "https://releases.hashicorp.com/terraform/1.3.4/terraform_1.3.4_linux_amd64.zip"
    unzip terraform_1.3.4_linux_amd64.zip
    sudo mv terraform /usr/local/bin/
    rm terraform_1.3.4_linux_amd64.zip
  else
    echo "Terraform v1.3.4 is already installed."
  fi
fi

# Clean-up OS after installation
echo "Cleaning up the OS..."
sudo apt-get autoremove -y
sudo apt-get clean
