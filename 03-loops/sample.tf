resource "null_resource" "dummy" {
    count =10
    }

output "numbers" {
  value = [for i in range(1, 11) : i]
}