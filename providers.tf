terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.78"
    }
    archive = {
      source  = "hashicorp/archive"
      version = "~> 2.6"
    }
  }
}

provider "aws" {
  region = var.aws_region
}
