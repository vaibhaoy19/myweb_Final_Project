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
  ami                    = var.ami_id
  
  tags = {
    Name = "import"
  }

}
