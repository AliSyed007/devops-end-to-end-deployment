resource "aws_instance" "web" {
  ami           = "ami-053b0d53c279acc90" # Ubuntu 22.04 LTS (us-east-1)
  instance_type = "t2.micro"

  subnet_id                   = aws_subnet.public.id
  vpc_security_group_ids      = [aws_security_group.web_sg.id]
  key_name                    = aws_key_pair.deployer.key_name
  associate_public_ip_address = true

  tags = {
    Name = "${var.project_name}-ec2"
  }
}
