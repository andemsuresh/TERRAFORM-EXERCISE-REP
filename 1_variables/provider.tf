
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">=4.17.1"
    }
  }
}

provider "aws" {
  # Configuration options
  region  = var.aws_region
  profile = var.aws_profile

}


