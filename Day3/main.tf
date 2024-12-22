resource "aws_vpc" "vpc1" {
  for_each = var.project_vpc

  cidr_block = each.value.cidr_block
  tags = { 
    Name = each.key
  }
}

# resource "aws_subnet" "public_subnet" {
#    for_each = var.project_public_subnet
     
#     vpc_id                  = aws_vpc.vpc1.id
#     cidr_block              = each.value.cidr_block
#     availability_zone       = each.value.availability_zone
#     map_public_ip_on_launch = each.value.map_public_ip_on_launch 
# }

# resource "aws_subnet" "private_subnet" {
#    for_each = var.project_private_subnet
     
#     vpc_id                  = aws_vpc.vpc1.id
#     cidr_block              = each.value.cidr_block
#     availability_zone       = each.value.availability_zone
     
# }

resource "aws_instance" "ins1" {
  for_each = var.web

  ami = each.value.ami_id
  instance_type = each.value.instance_type
  key_name = each.value.key_name
  vpc_security_group_ids = each.value.security_groups

  tags = { 
    Name = each.key
  }
}