provider "aws" {
region = 
}

resouce "aws_vpc" "one"{
cide_block = "10.0.0.0/24"
tags = {
Name = "dev-vpc"
}
}

resouce "aws_subnet" "one"{
vpc_id = aws_vpc.one.id 
cide_block = "10.0.0.0/24"
tags = {
Name = "dev-subnt"
}
}


resouce "aws_subnet" "three"{
subnt_id = aws_subnet.two.id
ami = "ami-sdfjoiasndf"
instance_type = "t2.micro"
key_name = " "
tags = {
Name = ""
}
}