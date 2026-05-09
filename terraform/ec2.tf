resource "aws_instance" "app_server" {
  ami           = "ami-0c2af51e265bd5e0e"
  instance_type = "t2.micro"

  security_groups = [aws_security_group.app_sg.name]

  key_name = "your-key-pair"

  user_data = file("../scripts/deploy.sh")

  tags = {
    Name = "DevOps-App-Server"
  }
}