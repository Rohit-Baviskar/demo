provider "aws" {
    region = "ap-south-1"  
}

resource "aws_instance" "ubuntu" {
  ami           = "ami-02eb7a4783e7e9317"
  instance_type = "t2.micro"

  tags = {
    Name = "server-1"
  }
}

resource "aws_instance" "ec2-user" {
  ami           = "ami-0c768662cc797cd75"
  instance_type = "t2.micro"

  tags = {
    Name = "server-2"
  }
}

resource "aws_instance" "redhat" {
  ami           = "ami-0fdea1353c525c182"
  instance_type = "t2.micro"

  tags = {
    Name = "server-3"
  }
}
