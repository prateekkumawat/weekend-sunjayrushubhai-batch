# create security group in existing project-vpc
resource "aws_security_group" "project_sec_sg" {
 name = "project-vpc-security-vpc-grp"
 description = "Allow SSH rules for Instance"
 vpc_id = data.aws_vpc.project-vpc.id
 
 ingress {
    description   = "Allow SSH Rules"
    from_port     = 22
    to_port       = 22
    protocol      = "TCP"
    cidr_blocks   = ["0.0.0.0/0"]
  }
 
 egress {
    description   = "Allow All Traffic"
    from_port     = 0
    to_port       = 0
    protocol      = "-1"
    cidr_blocks   = ["0.0.0.0/0"]
  }
 tags = {
    Name = "project-security-vpc-grp"
  }
}


# create a aws instnace in exist subnet az1 and az2 of projectvpc 
resource "aws_instance" "instance1" {
  ami             = "ami-0614680123427b75e"
  instance_type   = "t2.micro"
  subnet_id       = data.aws_subnet.project-vpc-pub-az1.id
  associate_public_ip_address =  "true"
  vpc_security_group_ids = [aws_security_group.project_sec_sg.id]
  key_name        = "mount.pem"
  tags = {
    Name = "project-vpc-ec2-public"
  }
}

resource "aws_instance" "instance2" {
  ami             = "ami-0614680123427b75e"
  instance_type   = "t2.micro"
  subnet_id       = data.aws_subnet.project-vpc-pri-az1.id
  associate_public_ip_address =  "false"
  vpc_security_group_ids = [aws_security_group.project_sec_sg.id]
  key_name        = "mount.pem"
  tags = {
    Name = "project-vpc-ec2-private"
  }
}