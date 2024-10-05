terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
     
    }
  }
}

# Configure the AWS Provider
provider "aws" {
    region =  "us-east-1"
    
}
resource "aws_instance" "myec2" {
  instance_type          = "t2.medium"
  ami                    = data.aws_ami.app_ami.id
  
  
  tags = {
    Name = "import"
  }

}
resource "aws_instance" "myec2-poll" {
  instance_type          = "t2.medium"
  ami                    = data.aws_ami.app_ami.id
  
  
  tags = {
    Name = "Poll"
  }

}
#resource "aws_eip" "lb" {
 # instance = aws_instance.myec2.id
#  vpc      = true
#}
data "aws_ami" "app_ami" {
    owners      = ["amazon"]
    most_recent = true


  filter {
    name   = "name"
    values = ["amzn2-ami-kernel-5.10**"]
  }
}
