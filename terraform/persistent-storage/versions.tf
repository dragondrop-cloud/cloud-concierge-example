terraform {
  required_version = "~> 1.5.1"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.59.0"
    }
  }

  cloud {
    organization = var.org

    workspaces {
      name = "aws-persistent-storage-dev"
    }
  }
}
