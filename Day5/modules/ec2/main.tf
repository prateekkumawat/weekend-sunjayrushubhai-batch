resource "aws_instance" "instance1" {
  ami             = var.ami_image
  instance_type   = var.instance_type
  subnet_id       = var.public_subnet
  associate_public_ip_address =  "true"
  vpc_security_group_ids = [var.project_sec_grp]
  key_name        = var.key_name_1
  tags = {
    Name = "dev-ec2-public"
  }
}

resource "aws_instance" "instance2" {
  ami             = var.ami_image
  instance_type   = var.instance_type
  subnet_id       = var.public_subnet
  associate_public_ip_address =  "true"
  vpc_security_group_ids = [var.project_sec_grp2]
  key_name        = var.key_name_2
  tags = {
    Name = "dev-ec2-public2"
  }
}