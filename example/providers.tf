provider "aws" {
  region = var.aws_region
}
# lock aws provider version
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.55.0"
    }
  }

  required_version = "~> 1.0.0"
}
