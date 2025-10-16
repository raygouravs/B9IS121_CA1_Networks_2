resource "aws_instance" "test_server" {
  ami           = "ami-0bc691261a82b32bc"
  instance_type = "t3.micro"

  tags = {
    Name = "DockerServer"
  }
}