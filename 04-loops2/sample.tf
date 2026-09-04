provider "aws" {
  region = "us-east-1"
}
variable "instance" {
    default = {
        frontend = {
            instance_type = "t3.micro"
            }
        catalogue = {
            instance_type = "t3.small"
            }
        }
}
variable "ami" {
    default = "ami-0220d79f3f480ecf5"
    }
resource "aws_instance" "web" {
    for_each = var.instance
   ami           = var.ami
    instance_type = each.value["instance_type"]

  tags = {
    Name = each.key
  }
}