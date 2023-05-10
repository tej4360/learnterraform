 resource "null_resource" "null" {
   count = 10
 }
 resource "null_resource" "abc" {
   count = length(var.fruits)
   provisioner "local_exec" {
     command = "echo fruit name : ${var.fruits[count.index]}"
   }
 }


 variable "fruits" {
   default = ["apple", "banana", "orange"]
 }