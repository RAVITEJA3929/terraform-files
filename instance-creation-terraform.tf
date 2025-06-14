provider "aws" {
region = "us-east-1"
}

resource "aws_instance" "teja" {
tags = {
Name = "sonu"
}

ami = "ami-0f3f13f145e66a0a3"
instance_type = "t2.micro"
key_name = "teja1"
availability_zone = "us-east-1a"
count = 1
root_block_device {
volume_size = 10
}
}
