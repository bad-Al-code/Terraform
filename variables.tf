variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
}

variable "region" {
  description = "The AWS region to create resource in"
  type        = string
}

variable "environment" {
  description = "The environment (e.g. dev, satging, prod)"
  type        = string
}

variable "key_name" {
  description = "The name for the key pair"
  type        = string
}

variable "public_key_path" {
  description = "Path to the public key file"
  type        = string
}

variable "availability_zone" {
  description = "AZ for Subent"
  type        = string
}
