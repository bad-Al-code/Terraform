
variable "key_name" {
  description = "The name for the key pair"
  type        = string
}

variable "public_key_path" {
  description = "Path to the public key file"
  type        = string
}

variable "environment" {
  description = "The environment (e.g. dev, stage, prod)"
  type        = string
}
