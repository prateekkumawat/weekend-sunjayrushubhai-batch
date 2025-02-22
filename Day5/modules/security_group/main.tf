resource "aws_security_group" "dev_sec_sg" {
 name = "default-security-vpc-grp"
 description = "Allow SSH rules for Instance"
 vpc_id = var.vpc_id
 
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
    Name = "default-security-vpc-grp"
  }
}
