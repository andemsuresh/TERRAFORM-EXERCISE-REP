terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">=4.17.1"
    }
  }
}
provider "aws" {
  region  = var.AWS_REGION
  profile = var.AWS_PROFILE
}