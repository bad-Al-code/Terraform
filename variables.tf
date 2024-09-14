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

