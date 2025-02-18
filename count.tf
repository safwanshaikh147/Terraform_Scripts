provider "aws" {
region = ""
  
}

resource "aws_instance" "name" {
count = 
ami = 
instance_type = 
tags = {
  Name = var.instance_name(count.index)
}
  
}

variable "instance_type" {
    default = [t2.micro" , "t2.micro", "t2.nano"]
  
}

variable "instance_name" {
default = ["webserver", "appserver", "dbserver"]
}