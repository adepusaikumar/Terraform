terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
  backend "s3" {
    bucket         = "remote-state-daws88s-sai"
    key            = "remote-state-demo-ec2.tfstate"
    region         = "us-east-1"
    encrypt        = true
    use_lockfile = true # Use S3 native locking (Terraform 1.10+)
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

