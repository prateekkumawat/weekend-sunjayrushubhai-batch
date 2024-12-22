variable "web" {
    description = "map values for web ec2 instance"
    type = map(object({   
       ami_id = string
       instance_type = string 
       key_name = string
       security_groups = list(string)
    }))
}

variable "project_vpc" {
      type = map(object({
        cidr_block = string
      }))
}

# variable "project_public_subnet" {
#   type = map(object({
    
#     cidr_block              = string 
#     availability_zone       = string
#     map_public_ip_on_launch = bool
#   }))
# }

# variable "project_private_subnet" {
#   type = map(object({
     
#     cidr_block              = string 
#     availability_zone       = string
    
#   }))
# }