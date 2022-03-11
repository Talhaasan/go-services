provider "aws" {
  region     = "us-east-1"
}

resource "aws_instance" "rmq" {
  ami           = "ami-07ebfd5b3428b6f4d"
  instance_type = "t2.micro"
  key_name = "rabbitmq"
  vpc_security_group_ids = ["sg-0e6f56a8099ee33e4"]
}