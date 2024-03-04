provider "aws" {
   version = "5.0"
   region = "us-west-1"  
   access_key = ""
   secret_key = ""
}

resource "aws_instance" "K8-M" {
    ami = "ami-0cd59ecaf368e5ccf"
    instance_type = "t2.medium"
    key_name = "DevopsDemoKeypair.pem"
    tags = {
      Name = "KMASTER"
    }
  
}

resource "aws_instance" "K8-S1" {
    ami = "ami-0cd59ecaf368e5ccf"
    instance_type = "t2.medium"
    key_name = "DevopsDemoKeypair.pem"
    tags = {
      Name = "KSlave"
    }
  
}
