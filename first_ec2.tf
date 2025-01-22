//configuration related to terraform.
provider "aws" {
  region     = "us-east-1"
}

//resource that we want to create.
resource "aws_instance" "ec2" {
  ami           = "ami-01816d07b1128cd2d"
  instance_type = "t2.micro"
tags = {
    Name = "MyEC2Instance1"
  }

}
