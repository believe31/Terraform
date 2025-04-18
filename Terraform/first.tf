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
  region = "ap-south-1"
  profile = "abhishek"

}

# Create a Ec2 machine
resource "aws_instance" "my_ec2" {
  ami           = "ami-080b1a55a0ad28c02" # Amazon Linux 2 in us-east-1
  instance_type = "t2.micro"

  tags = {
    Name = "MyFirstEC2"
  }
}

output "instance_public_ip" {
  value = aws_instance.my_ec2.public_ip
}