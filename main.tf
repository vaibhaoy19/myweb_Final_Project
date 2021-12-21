provider "aws" {
  region     = "ap-south-1"
  access_key = "AKIAWARYSVAQRH6WWEP5"
  secret_key = "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"
}
resource "aws_instance" "myec2" {
  instance_type          = "t2.micro"
  ami                    = "ami-052cef05d01020f1d"
  
  tags = {
    Name = "import"
  }

}
