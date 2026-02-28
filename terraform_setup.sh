#!/bin/bash

# Terraform Installation Script for Amazon Linux
# This script installs Terraform and helps you run your first Terraform file

echo "======================================"
echo "Installing Terraform on Amazon Linux"
echo "======================================"

# Install required utilities
echo "Step 1: Installing yum-utils and shadow-utils..."
sudo yum install -y yum-utils shadow-utils

# Add HashiCorp repository
echo "Step 2: Adding HashiCorp repository..."
sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo

# Install Terraform
echo "Step 3: Installing Terraform..."
sudo yum install -y terraform

# Verify installation
echo "Step 4: Verifying Terraform installation..."
terraform version

echo ""
echo "======================================"
echo "Terraform installed successfully!"
echo "======================================"
echo ""
echo "To run your first Terraform file:"
echo "1. Navigate to your Terraform directory"
echo "   cd /path/to/your/terraform/project"
echo ""
echo "2. Initialize Terraform (downloads provider plugins)"
echo "   terraform init"
echo ""
echo "3. Format your Terraform files"
echo "   terraform fmt"
echo ""
echo "4. Validate your configuration"
echo "   terraform validate"
echo ""
echo "5. Preview changes"
echo "   terraform plan"
echo ""
echo "6. Apply changes (create infrastructure)"
echo "   terraform apply"
echo ""
echo "7. Destroy infrastructure (when done)"
echo "   terraform destroy"
echo ""
echo "======================================"
