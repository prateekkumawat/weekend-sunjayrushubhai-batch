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

###************** Key pair define for instnace 2 *********
resource "tls_private_key" "private_key1" {
  rsa_bits = 4096
  algorithm = "RSA"
}

resource "aws_key_pair" "private_keypair1" {
  key_name = var.key_pair_name_2
  public_key = tls_private_key.private_key1.public_key_openssh
}

resource "local_file" "hsitpublicserverkey1" {
   filename = var.key_pair_name_2
   content = tls_private_key.private_key1.private_key_pem
}

###**************End Key Pair define for instance 2 **********