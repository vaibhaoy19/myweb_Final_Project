provider "aws" {
  region     = "ap-south-1"
  access_key = "AKIAWARYSVAQQCORH2FA"
  secret_key = "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"
}
resource "aws_instance" "myec2" {
  instance_type          = "t2.micro"
  ami                    = "ami-052cef05d01020f1d"
  
  tags = {
    Name = "import"
  }

}
