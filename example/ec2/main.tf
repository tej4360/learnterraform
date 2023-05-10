resource "aws_instance" "test_instance" {
  ami                    = data.aws_ami.ec2_ami.image_id
  instance_type          = "t3.micro"
  vpc_security_group_ids = [var.sg_id]

  tags = {
    Name = "test_instance"
  }
}


data "aws_ami" "ec2_ami" {
  most_recent            = true
  name_regex             = "Centos-8-DevOps-Practice"
  owners                 = ["973714476881"]
}

variable "sg_id" {}

