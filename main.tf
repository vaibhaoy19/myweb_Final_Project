provider "aws" {
  region     = "ap-south-1"
}
resource "aws_instance" "myec2" {
  instance_type          = "t2.micro"
  ami                    = "ami-052cef05d01020f1d"
  
  tags = {
    Name = "import"
  }

}
