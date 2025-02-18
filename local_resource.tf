provider "local" {
region = "us-east-1"
  
}

resource "local_file" "name" {
filename = name.txt

content = "hi all my identity is name"
  
}