provider "aws" {
region "us-est-1
}

resource "aws instance" "one" {
ami = "var.ami"
instance_type = "var.instance_type"
tags = {
Name = var.instance_name
}
}