
# VPC-2 - 10.1.0.0/16

resource "aws_vpc" "vpc-bhanu" {
  cidr_block = var.vpc_cidr

  tags = {
    Name        = "vpc-bhanu-${var.environment}"
    Environment = var.environment
  }

}

output "vpc_id" {
  value = aws_vpc.vpc-bhanu.id
}