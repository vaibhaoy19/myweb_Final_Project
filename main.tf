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
  ami                    = data.aws_ami.app_ami.id
  key_name      = "alankey"
  
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
provisioner "remote-exec" {
    inline = [
      "sudo amazon-linux-extras install -y nginx1",
      "sudo systemctl start nginx"
    ]
  }
  connection {
    type        = "ssh"
    user        = "ec2-user"
    private_key = file("alankey.pem")
    host        = self.public_ip
  }
