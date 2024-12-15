# variable define for region
variable "aws_region" {}

# variable define for vpc purpose
variable "aws_vpc_cidr" {}
variable "aws_az" {
  type = list(any)
}
variable "subnet_cidr" {
  type = list(any)
}

# variable define for ec2 resources
variable "key_pair_name_ec2" {}
variable "aws_ami" {}
variable "aws_instance_type" {}