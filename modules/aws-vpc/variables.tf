variable "environment" {
  description = "The environment (e.g., dev, staging, prod)"
  type        = string
}

variable "availability_zone" {
  description = "Availability Zone for the subnet"
  type        = string
}
