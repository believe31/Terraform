terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket = "abhiterraform3199"
    key    = "terraform.tfstate"
    region = "ap-south-1"
  }
}

# Configure the AWS Provider
provider "aws" {
  region  = "ap-south-1"
  profile = "abhishek"

}


# Create a Ec2 machine
resource "aws_instance" "my_ec2machine" {
  ami                    = "ami-080b1a55a0ad28c02"
  instance_type          = "t2.micro"
  tags = {
    Name = "Abhi"
}
}
output "instance_public_ip" {
  value = "${aws_instance.my_ec2machine.public_ip}"
}


