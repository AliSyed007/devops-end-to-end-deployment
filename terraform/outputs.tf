output "public_ip" {
  value = aws_instance.web.public_ip
}

output "ssh_command" {
  value = "ssh -i ~/.ssh/devops-portfolio ec2-user@${aws_instance.web.public_ip}"
}
