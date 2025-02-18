provider "aws" {
region = ""
  
}

resource "aws_instance" "name" {
  ami = 
  instance_type = 
  key_name = 
  tags = {
    name =

  }
  depends_on = [ 
    aws_ebs_volume.one

   ]
}
resource "aws_ebs_volume" "name" {
    size = 
    availability_zone = 
    tags = {
        Name = 

    }
  
}