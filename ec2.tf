resource "aws_instance" "web" {
  ami           = "ami-042e8287309f5df03"
  instance_type = "t3.micro"

  tags = {
    Name = "simple-ec2"
  }
}
