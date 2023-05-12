data "aws_ec2_instance_type" "example" {
  instance_type = "t2.micro"
}

output "print" {
  value = "data source output - ${data.aws_ec2_instance_type.example.ena_support} "
}

