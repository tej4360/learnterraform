 resource "null_resource" "null" {
   count = 10
 }

 resource "null_resource" "abc" {
   count = length(var.fruits)
   provisioner "local-exec" {
     command = "echo -e Fruit Name - \[36m ${var.fruits[count.index] \[0m]}"
   }
 }

 variable "fruits" {
   default = ["apple", "banana", "orange"]
 }