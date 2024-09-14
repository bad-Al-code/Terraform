terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

module "s3_bucket" {
  source = "./modules/s3-bucket"

  bucket_name = var.bucket_name
  region      = var.region
  environment = var.environment
}


