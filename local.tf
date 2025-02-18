provider "aws" {
region 
}

local {
env = "prod"
}

resource "aws_vpc" "one"{
cidr_block = "10.0.0.0/16"
tags ={
Name = "${local.env} -vpc"
}
}

resource "aws_subnet" "two" {
vpc_id = aws_vpc.one.id 
cidr_block = "10.0.0.0/24"
tags = {
Name = "${local.env}-subnet"
}
}

resource "aws_instance" "three" {
subnet_id = aws_subnet.two.id
ami = "ami-"
instance_type = "t2.micro"
key_name = "jrb"
tags = {

Name = "${local.env} -server"
}
}


