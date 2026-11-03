provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "web" {
  ami           = "ami-0055977a6e828a4f4"
  instance_type = "t3.micro"

  tags = {
    Name = "web"
  }
}