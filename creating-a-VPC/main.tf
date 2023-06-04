terraform {
  required_version = ">= 1.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.12.1"
    }
  }
  backend "s3" {
    bucket = "creating-the-first-bucket-danielnf"
    key    = "vpc/teraform.tfstate"
    region = "eu-central-1"
  }
}

provider "aws" {
  region = "eu-central-1"

  default_tags {
    tags = {
      owner      = "danielnf"
      managed-by = "terraform"
    }
  }
}