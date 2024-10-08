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

module "aws_s3_bucket" {
  source = "./modules/aws-s3-bucket"

  bucket_name = var.bucket_name
  region      = var.region
  environment = var.environment
}


module "aws_key_pair" {
  source = "./modules/aws-key-pair"

  key_name        = var.key_name
  public_key_path = var.public_key_path
  environment     = var.environment
}

module "aws_vpc" {
  source = "./modules/aws-vpc"

  environment       = var.environment
  availability_zone = var.availability_zone
}
