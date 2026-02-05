provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "my-server" {
  tags = {
    Name = "myfirst-instance"
    env = "dev-env"
    client = "swiggy"
  }

  ami           = "ami-0532be01f26a3de55"
  instance_type = "t3.micro"
  availability_zone = "us-east-1a"
  key_name      = "kk-us-keypair"

  root_block_device {
    volume_size = 10
  }
}

