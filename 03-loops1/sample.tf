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
resource "aws_instance" "web" {
    count = var.instance.length //length(var.instance)
  ami           = "ami-0220d79f3f480ecf5"
  instance_type = "t3.micro"

  tags = {
    Name = var.instance[count.index]
  }
}