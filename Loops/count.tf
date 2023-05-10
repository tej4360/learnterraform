 resource "null_resource" "null" {
   count = 10
 }

 resource "null_resource" "abc" {
   count = length(var.fruits)
   provisioner "local-exec" {
     command = "echo -e Fruit Name - \e[36m ${var.fruits[count.index]} \e[0m"
   }
 }

 variable "fruits" {
   default = ["apple", "banana", "orange"]
 }