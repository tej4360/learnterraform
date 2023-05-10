 #resource "null_resource" "null" {
 #  count = 5
 #}

 resource "null_resource" "abc" {
   count = length(var.fruits)
   provisioner "local-exec" {
     command = "echo -e Fruit Name -  ${var.fruits[count.index]}"
   }
 }

 variable "fruits" {
   default = ["apple", "banana", "orange"]
 }