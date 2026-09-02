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
}