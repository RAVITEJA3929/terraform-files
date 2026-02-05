resource "aws_instance" "myfirst-instance" {
tags = {
Name = "resouce-instance"
}
provider = aws.sonu
ami = "ami-0532be01f26a3de55"
instance_type = "t3.micro"
key_name = "kk-us-keypair"
availability_zone = "us-east-1a"
root_block_device {
volume_size = 10
}
count = 2
}
