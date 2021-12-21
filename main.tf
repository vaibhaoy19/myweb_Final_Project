terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
     
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
  profile    = "${var.profile}"
}
resource "aws_instance" "myec2" {
  instance_type          = "t2.micro"
  ami                    = "ami-052cef05d01020f1d"
  
  tags = {
    Name = "import"
  }

}
