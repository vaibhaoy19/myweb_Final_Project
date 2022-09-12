terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
     
    }
  }
}

# Configure the AWS Provider
provider "aws" {
    region =  var.region
    profile  = var.profile
}
resource "aws_instance" "myec2" {
  instance_type          = "t2.micro"
  ami                    = "${lookup(var.ami_id, var.region)}"
  
  tags = {
    Name = "import"
  }

}
data "aws_ami" "app_ami" {
    owners      = ["amazon"]
    most_recent = true


  filter {
    name   = "name"
    values = ["amzn2-ami-kernel-5.10**"]
  }
}
