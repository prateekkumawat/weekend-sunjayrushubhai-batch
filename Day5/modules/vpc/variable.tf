variable "project_name" {}
variable "vpc_network_cidr" {}
variable "vpc_subnet_cidr" {
     type = list  
}
variable "vpc_az" {
  type = list
}