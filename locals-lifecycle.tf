provider "aws" {
  region = "us-east-2"
}

locals {
  dev  = "t3.micro"
  test = "c71-flex-large"
  prod = "c71-flex-large"
}

resource "aws_instance" "myinstance" {
  tags = {
    Name = "${terraform.workspace}-Server-FL"
  }
  ami              = "ami-93ea46da2e36f7"
  instance_type    = local[terraform.workspace]
  key_name         = "locker-local"
  availability_zone = "us-east-2a"
  
  lifecycle {
    prevent_destroy = true
    ignore_changes  = [tags]
  }
  
  root_block_device {
    volume_size = 10
  }
}
