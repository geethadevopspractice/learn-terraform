resource "null_resource" "dummy" {
    count =10
    }

output "numbers" {
  value = [for i in range(1, 11) : i]
}

provider "aws" {
  region = "us-east-1"
}
variable "instance" {
    default = ["frontend", "catalogue"]
}
variable "ami" {
    default = "ami-0220d79f3f480ecf5"
    }
variable "instance_type" {
    default = "t3.micro"
    }
resource "aws_instance" "web" {
    count = length(var.instance)
#     var.instance.length
  ami           = var.ami
  instance_type = var.instance_type

  tags = {
    Name = var.instance[count.index]
  }
}