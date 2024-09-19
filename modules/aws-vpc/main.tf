
resource "aws_vpc" "public_vpc_dev" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name        = "${var.environment}-vpc"
    Environment = var.environment
  }
}

# Subnets are subdivisions within VPC where we can launch AWS resources.
resource "aws_subnet" "public_subnet_dev" {
  vpc_id                  = aws_vpc.public_vpc_dev.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = var.availability_zone
  map_public_ip_on_launch = true

  tags = {
    Name = "${var.environment}-subnet"
  }
}
