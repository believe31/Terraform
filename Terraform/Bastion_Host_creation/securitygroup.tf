resource "aws_security_group" "allow_all" {
  name        = "allow-all-sg"
  description = "Allow all inbound and outbound traffic"
  vpc_id      = module.vpc.vpc_id # Replace with your VPC ID if needed

  ingress {
    description      = "Allow all inbound traffic"
    from_port        = 0
    to_port          = 0
    protocol         = "-1"          # -1 means all protocols
    cidr_blocks      = ["0.0.0.0/0"] # Allow from everywhere
    ipv6_cidr_blocks = ["::/0"]      # Allow from everywhere (IPv6)
  }

  egress {
    description      = "Allow all outbound traffic"
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = local.tags
}
