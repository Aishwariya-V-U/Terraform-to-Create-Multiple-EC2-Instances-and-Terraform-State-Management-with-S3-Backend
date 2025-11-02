provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "web" {
  count = 3  # Creates 3 instances

  ami           = "ami-your-ami"
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform-Instance-${count.index}"
  }
}
