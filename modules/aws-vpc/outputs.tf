
output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.public_vpc_dev.id
}

output "subnet_id" {
  description = "The ID of the subnet"
  value       = aws_subnet.public_subnet_dev.id
}

output "internet_gateway_id" {
  description = "The ID of the Intenet Gateway"
  value       = aws_internet_gateway.public_internet_gateway.id
}
