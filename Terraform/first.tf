terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region  = var.region
  profile = "abhishek"

}

# Create a Ec2 machine
resource "aws_instance" "my_ec2" {
  ami                    = var.ami # Amazon Linux 2 in us-east-1
  instance_type          = var.instancetype
  key_name               = aws_key_pair.key.key_name
  vpc_security_group_ids = ["${aws_security_group.allow_tls.id}"]
  tags = {
    Name = "${var.tags}"
  }
  provisioner "file" {
    content = "Abhishek here"
    destination = "/tmp/file.txt"

    connection {
      type        = "ssh"
      user        = "ec2-user"
      private_key = file("${path.module}/id_rsa")
      host        = self.public_ip
    }
  }

}
output "instance_public_ip" {
  value = aws_instance.my_ec2.public_ip
}


