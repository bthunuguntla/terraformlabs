resource "aws_subnet" "subnet-bhanu" {
  vpc_id = data.terraform_remote_state.vpc-remote-state.outputs.vpc_id
  cidr_block = var.subnet_cidr
  map_public_ip_on_launch = false

  tags = {
    Name = "subnet-bhanu-${var.environment}"
    Environment = var.environment
  }

}