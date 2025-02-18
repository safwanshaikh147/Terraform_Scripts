# provider "aws" {
#     resource 
  
# }

resource "aws_instance" "name" {
for_each = toset([])
ami = 
instance_type = 
tags = {
Name ="${}"
}
  
}