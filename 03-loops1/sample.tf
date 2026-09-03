resource "null_resource" "dummy" {
    count =10
    }

output "numbers" {
  value = [for i in range(1, 11) : i]
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "web" {
    count = 2
  ami           = "ami-0220d79f3f480ecf5"
  instance_type = "t3.micro"

  tags = {
    Name = "web-${count.index}
  }
}