resource "aws_instance" "var-instance" {
tags = {
Name = var.iname[count.index]
}

ami = var.ami_id
availability_zone = var.izone
instance_type = var.itype[count.index] ? "t3.micro" : "c7i-flex.large"
key_name = var.ikey_name
count = var.icount
root_block_device {
volume_size = var.isize[count.index]
}
}
