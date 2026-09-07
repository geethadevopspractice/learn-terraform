resource "null_resource" "test" {}

resource "aws_instance" "web" {
  ami           = "ami-0220d79f3f480ecf5"
  instance_type = var.instance_type

  tags = {
    Name = "sample"
  }
}

variable "instance_type" {}