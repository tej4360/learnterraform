# resource "null_resource" "null" {
#   count = 5
# }
# resource "null_resource" "null_ins" {
#   count = length(var.fruits)
#   provisioner "local_exec" {
#     command = "echo fruit name : ${var.fruits[count.index]}"
#   }
# }
#
# variable "fuits" {
#   default = [ "apple", "banana", "orange" ]
# }
resource "null_resource" "null" {
  count = 10
}

resource "null_resource" "fruits" {
  count = length(var.fruits)

  provisioner "local-exec" {
    command = "echo Fruit Name -  ${var.fruits[count.index]}"
  }

}

variable "fruits" {
  default = ["apple", "banana", "orange"]
}