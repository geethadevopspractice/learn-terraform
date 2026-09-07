module "sample" {
  source = "./sample-module"
instance_type = var.instance_type
}

# Source can be multiple sources.
# https://developer.hashicorp.com/terraform/language/modules/sources

variable "instance_type" {
  default = "t3.micro"
}