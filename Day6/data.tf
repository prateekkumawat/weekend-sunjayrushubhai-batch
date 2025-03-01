# call existing project-vpc in terraform code
data "aws_vpc" "project-vpc" {
  id = var.vpc_id
}

# call existing project-vpc subnets
data "aws_subnet" "project-vpc-pub-az1" {
  id = var.project_vpc_publicsubnet_az1_id
}

data "aws_subnet" "project-vpc-pub-az2" {
  id = var.project_vpc_publicsubnet_az2_id
}

data "aws_subnet" "project-vpc-pri-az1" {
  id = var.project_vpc_privatesubnet_az1_id
}

data "aws_subnet" "project-vpc-pri-az2" {
  id = var.project_vpc_privatesubnet_az2_id
}

