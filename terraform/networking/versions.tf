terraform {
  required_version = "~> 1.2.6"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.59.0"
    }
  }

  cloud {
    organization = var.org

    workspaces {
      name = "aws-networking-dev"
    }
  }
}
