# x1=abc # shell
# x1: abc # ansible

variable "x1" {
  default = "abc"
}

output "x1" {
  # variable var.x1 for the direct variable usage
  value = var.x1
}

output "x11" {
  # variable var.x1 is with combination of a string then ${var.x1}
  value = "Value of x1 is ${var.x1}"
#   value = "Value of x1 is "var.x1 // this will give error that variable is not found

}
# --------------------------------------------------
# Data types
# String , Need to be given in double quotes
# Number, No need of quote
# Boolean, No need of quote

variable "string1" {
  default = "abc"
}

variable "number1" {
  default = 100
}

variable "number2" {
  default = 100.1
}

# true or false is supported.
variable "boolean1" {
  default = true
}

# Variable Types
# Plain
# List
# Map / Dict

variable "plain1" {
  default = "abc"
}

# list index starts from 0
variable "list1" {
  default = ["abc", 123, true]
}

variable "map1" {
  default = {
    name = "devops"
    skill = "engineer"
  }
}

output "list1_value1" {
  value = var.list1[0]
}

output "map1_name" {
  value = var.map1["name"]
}