# Generate SSH key pair with Terraform
resource "tls_private_key" "rsa_4096" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "my_key" {
  key_name   = "terraform-key"
  public_key = tls_private_key.rsa_4096.public_key_openssh
}

# write key to a file
resource "local_file" "private_key" {
  content  = tls_private_key.rsa_4096.private_key_pem
  filename = "${path.module}/terraform-key.pem"  
  file_permission = "0400"                       
}


# Output the private key (sensitive)
output "private_key_pem" {
  value     = tls_private_key.rsa_4096.private_key_pem
  sensitive = true
}


# Security Group Configuration
resource "aws_security_group" "ec2_sg" {
  name        = "ec2-sg"
  description = "Allow SSH, HTTP, HTTPS"

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  
  }

  ingress {
    description = "HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "HTTPS"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# EC2 Instance Configuration
resource "aws_instance" "docker_server" {
  ami           = "ami-0bc691261a82b32bc"
  instance_type = "t3.micro"
  key_name      = aws_key_pair.my_key.key_name
  security_groups = [aws_security_group.ec2_sg.name]

  tags = {
    Name = "DockerServer"
  }
}

