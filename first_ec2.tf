// AWS provider configuration
provider "aws" {
  region = "us-east-1"
}

// EC2 instance resource
resource "aws_instance" "ec2" {
  ami           = "ami-01816d07b1128cd2d"  
  instance_type = "t2.micro"

  tags = {
    Name = "karan"
  }
}

// Output the public IP of the EC2 instance
output "public_ip" {
  value = aws_instance.ec2.public_ip
}



