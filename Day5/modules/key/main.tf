resource "tls_private_key" "private_key2" {
  rsa_bits = 4096
  algorithm = "RSA"
}

resource "aws_key_pair" "private_keypair" {
  key_name = var.key_pair_name
  public_key = tls_private_key.private_key2.public_key_openssh
}

resource "local_file" "hsitpublicserverkey" {
   filename = var.key_pair_name
   content = tls_private_key.private_key2.private_key_pem
}