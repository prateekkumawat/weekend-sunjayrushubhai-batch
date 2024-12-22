### using for launching instances ####################
web = {
    "app-server" = { 
        ami_id = "ami-0fd05997b4dff7aac"
        instance_type = "t2.micro"
        key_name = "mount.pem"
        security_groups = ["launch-wizard-6"]
    } 

    "micro-server" = { 
        ami_id = "ami-0fd05997b4dff7aac"
        instance_type = "t2.micro"
        key_name = "mount.pem"
        security_groups = ["launch-wizard-6"]
    } 
  
    "micro-server-3" = { 
        ami_id = "ami-0fd05997b4dff7aac"
        instance_type = "t2.small"
        key_name = "mount.pem"
        security_groups = ["launch-wizard-6"]
    }    
     
}

project_vpc = { 
    "mynx-vpc" = {
        cidr_block = "10.10.0.0/16"
    }
    "mynx-vpc" = {
        cidr_block = "10.20.0.0/16"
    }

}

# project_public_subnet = { 
#     "mynx-pp-subnet1" = { 
#         vpc_id = aws_vpc.vpc1.id
#         cidr_block = "10.10.1.0/24"
#         availability_zone = "ap-south-1a"
#         map_public_ip_on_launch = true
#     }
# }
 
# project_private_subnet = {
#     "mynx-private-subnet1" = {
#         vpc_id = aws_vpc.vpc1.id
#         cidr_block = "10.10.2.0/24"
#         availability_zone = "ap-south-1b"
#     }
# }