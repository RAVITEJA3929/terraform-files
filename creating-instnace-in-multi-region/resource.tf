resource "aws_instance" "us-east-1-server" {
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

resource "aws_instance" "ap-south-2-server" {
  tags = {
    Name = "myfirst-instance"
    env = "dev-env"
    client = "swiggy"
  }
  provider = aws.ap-south-2
  ami           = "ami-00b9840037f2380a4"
  instance_type = "t3.micro"
  availability_zone = "ap-south-2a"
  key_name      = "kk-hyd-keypair"

  root_block_device {
    volume_size = 10
  }
}
output "instance_id" {
  value       = aws_instance.ap-south-2-server.id
  description = "ID of the EC2 instance"
  sensitive   = false
}
output "public_ip" {
  value       = aws_instance.ap-south-2-server.public_ip
  description = "ID of the EC2 instance"
  sensitive   = false
}
output "private_ip" {
  value       = aws_instance.ap-south-2-server.private_ip
  description = "ID of the EC2 instance"
  sensitive   = false
}

