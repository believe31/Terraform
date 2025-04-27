resource "aws_instance" "my_ec2" {
  ami                    = data.aws_ami.bastion.id
  instance_type          = "t2.micro"
  subnet_id              = module.vpc.public_subnets[0]
  key_name               = aws_key_pair.key.key_name
  vpc_security_group_ids = [aws_security_group.allow_all.id]

  # Define local.bastion for naming
  tags = {
    Name = local.bastion # Reference local.bastion here
  }
}
