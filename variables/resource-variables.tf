variable "ami_id" {
type = string
default = "ami-0532be01f26a3de55"
}

variable "iname" {
type = list(string)
default = [ "variable-instance1" , "variable-instance2" ]
}

variable "itype" {
type = list(bool)
default = [ true , false ]
}

variable "ikey_name" {
type = string
default = "kk-us-keypair"
}

variable "izone" {
type = string
default = "us-east-1a"
}

variable "isize" {
type = list(number)
default = [10, 22]
}

variable "icount" {
type = number
default = 2
}
