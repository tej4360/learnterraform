resource "aws_instance" "frontend" {
  ami                    = data.aws_ami.ec2_ami.image_id
  instance_type          = var.instance_type
  vpc_security_group_ids = [ data.aws_security_group.allow-all.id ]

  tags = {
    Name = "frontend"
  }
}

data "aws_ami" "ec2_ami" {
  most_recent            = true
  name_regex             = "Centos-8-DevOps-Practice"
  owners                 = ["973714476881"]
}

data "aws_security_group" "allow-all" {
  name = "allow-all"
}