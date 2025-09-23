locals {
    instance_count = 2
    instance_name = act6-Rocha-Carlos
}

resource "aws_instance" "rocha_carlos_sever_terr"{
  count           = local.instance_count 
  ami             = "ami-0ca4d5db4872d0c28"
  instance_type = var.instance_type

  tags = {
    Name = "local.instance_name"
  }
}