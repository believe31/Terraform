resource "aws_eip" "eip" {
  domain = "vpc"

  tags = {
    name = local.eip
  }
}

resource "aws_eip_association" "eip_assoc" {
  instance_id   = aws_instance.my_ec2.id
  allocation_id = aws_eip.eip.id
}
