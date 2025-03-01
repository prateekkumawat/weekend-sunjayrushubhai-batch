output "ec2_public_az1_pip" {
  value = aws_instance.instance1.public_ip
}

output "ec2_public_az1_privateip" {
  value = aws_instance.instance1.private_ip
}

output "ec2_public_az1_dns" {
  value = aws_instance.instance1.private_dns
}

output "ec2_public_az1_publicdns" {
  value = aws_instance.instance1.public_dns
}