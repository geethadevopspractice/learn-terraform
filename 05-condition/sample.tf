resource "aws_instance" "web" {
  ami           = "ami-0055977a6e828a4f4"
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