module "projectvpc" {
   source = "./modules/vpc"
    
   project_name = "terraform-module"
   vpc_network_cidr = "10.0.0.0/22"
   vpc_subnet_cidr = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
   vpc_az = ["ap-south-1a", "ap-south-1b"]
}

module "securitygroup" {
  source = "./modules/security_group"
  vpc_id =  module.projectvpc.vpc_id
}

module "key_pair" {
  source = "./modules/key"
  key_pair_name = "instancekey"
   key_pair_name_2 = "instancekey2"
}

module "ec2" {
  source = "./modules/ec2"

# this is value block for instnace 1 #################  
  ami_image = "ami-0614680123427b75e"
  instance_type = "t2.micro"
  vpc_id = module.projectvpc.vpc_id
  public_subnet = module.projectvpc.public_subnet
  private_subnet = module.projectvpc.private_subnet
  project_sec_grp = module.securitygroup.project_sec_grp
  key_name_1 = module.key_pair.key_name_1
  key_name_2 = module.key_pair.key_name_2
  project_sec_grp2 = module.securitygroup.project_sec_grp2
}