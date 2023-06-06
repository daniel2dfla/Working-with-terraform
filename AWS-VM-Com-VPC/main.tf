terraform {
  required_version = ">= 1.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.12.1"
    }
  }
  backend "s3" {
    bucket = "creating-bucket-danielnfirmiano"
    key    = "aws-vm/teraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"

  default_tags {
    tags = {
      owner      = "danielnf"
      managed-by = "terraform"
    }
  }
}

data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    bucket = "creating-bucket-danielnfirmiano"
    key    = "vpc/teraform.tfstate"
    region = "us-east-1"
  }
}

# https://developer.hashicorp.com/terraform/language/settings/backends/s3;