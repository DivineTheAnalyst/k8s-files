#!/bin/bash

# This script installs the AWS IAM Authenticator for EKS on Linux.

# Define the version and architecture
VERSION="v0.5.2"  # Update this to the latest version if necessary
ARCHITECTURE=$(uname -s | tr '[:upper:]' '[:lower:]')/$(uname -m)

# Download the AWS IAM Authenticator binary
echo "Downloading AWS IAM Authenticator..."
curl -o aws-iam-authenticator https://github.com/kubernetes-sigs/aws-iam-authenticator/releases/download/${VERSION}/aws-iam-authenticator_${VERSION#v}_linux_amd64

# Make the binary executable
echo "Making the binary executable..."
chmod +x ./aws-iam-authenticator

# Move the binary to a directory in your PATH
echo "Moving the binary to /usr/local/bin..."
sudo mv aws-iam-authenticator /usr/local/bin/

# Verify the installation
echo "Verifying the installation..."
if aws-iam-authenticator help; then
    echo "AWS IAM Authenticator installed successfully."
else
    echo "Installation failed. Please check the output for errors."
fi

# Prompt to configure AWS CLI if not done already
if ! command -v aws &> /dev/null; then
    echo "AWS CLI is not installed. Please install it and configure your AWS credentials."
else
    echo "AWS CLI is installed. Ensure it is configured with 'aws configure'."
fi
