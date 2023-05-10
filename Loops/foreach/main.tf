 resource "null_resource" for_each_ex {
   for_each = var.fruits
   provisioner "local exec" {
     command = "echo    fruit name - ${each.value["name"] - ${each.value["count"]}"
   }
 }