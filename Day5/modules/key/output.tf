output "key_name_1" {
  value = aws_key_pair.private_keypair.key_name
}

output "key_name_2" {
  value = aws_key_pair.private_keypair1.key_name
}