output "vpc_id" {
  value = aws_vpc.dev.id
}

output "public_subnet" {
  value = aws_subnet.public.id
}

output "private_subnet" {
  value = aws_subnet.private.id
}

output "db_private_subnet-az1" {
  value = aws_subnet.dbprivate1.id
}

output "db_private_subnet_az2" {
  value = aws_subnet.dbprivate2.id
}