#!/bin/bash

# Update the system and install required dependencies
sudo apt update -y
sudo apt install unzip -y

# Download the AWS CLI v2
echo "Downloading AWS CLI v2..."
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"

# Unzip the downloaded file
echo "Unzipping AWS CLI package..."
unzip awscliv2.zip

# Install the AWS CLI
echo "Installing AWS CLI v2..."
sudo ./aws/install

# Verify the installation
echo "Verifying AWS CLI installation..."
aws --version

# Clean up downloaded files
echo "Cleaning up installation files..."
rm -rf awscliv2.zip aws/

echo "AWS CLI v2 installation complete!"
