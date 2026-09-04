resource "aws_instance" "web" {
  ami           = "ami-0220d79f3f480ecf5"
  instance_type = var.instance_type == "" ? "t3.micro" : var.instance_type

  tags = {
    Name = "sample"
  }
}

variable "instance_type" {}

# Conditions
# Strings -  ==, !=
# Numbers - == , !=, >, >=, <, <=
# Booleans ( var.boolean ? true_val : false_val )


# Condition can also be used in cases to determine whether to create a resource or not
resource "null_resource" "test" {
  count = var.input == "" ? 0 : 1
}

variable "input" {}