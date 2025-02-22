# create resource1 
resource "aws_instance" "ins1" {
  ami = "ami-0fd05997b4dff7aac"
  instance_type = "t2.micro"
  key_name = "mount.pem"

  tags = { 
    Name = "statefiles"
    Infra_contol = "Terraform"
    Config_control = "Ansible"
    App_build = "Eks-Jenkins"
  }
}

# create resource2 
resource "aws_instance" "ins2" {
  ami = "ami-0fd05997b4dff7aac"
  instance_type = "t2.micro"
  key_name = "mount.pem"

  tags = { 
    Name = "statefiles1"
    Infra_contol = "Terraform"
    Config_control = "Ansible"
    App_build = "Eks-Jenkins"
    owner = "devopsTeam"
  }
}