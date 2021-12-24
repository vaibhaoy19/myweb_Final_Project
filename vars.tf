variable "profile" {
  type = string
}
variable "region" {
  type = string
}
variable "ami_id" {
  type = map(string)

  default = {
    us-east-1    = "ami-0ed9277fb7eb570c9"
    us-west-1    = "ami-03af6a70ccd8cb578"
    ca-central-1 = "ami-0bae7412735610274"
  }
}
