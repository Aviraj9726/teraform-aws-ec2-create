

resource "aws_instance" "myec2" {
  for_each = var.images
  ami = each.value
  instance_type = "t2.micro"
  depends_on = [aws_key_pair.aws_key]
  key_name = "aws_key"
  tags = {
        Name = "${each.key} test"
}

}

resource "tls_private_key" "private_key" {
  algorithm = "RSA"
  rsa_bits = "2048"
}

resource "local_file" "private_key" {
  filename = "myprivatekey"
  content = tls_private_key.private_key.private_key_pem

  }

resource "aws_key_pair" "aws_key" {
  key_name = "aws_key"
  public_key = tls_private_key.private_key.public_key_openssh

}

output "instace_details" {

  value =  values(aws_instance.myec2)[*].public_ip

}