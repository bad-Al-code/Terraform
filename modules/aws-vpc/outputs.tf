
output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.public_vpc_dev.id
}

output "subnet_id" {
  description = "The ID of the subnet"
  value       = aws_subnet.public_subnet_dev.id
}
