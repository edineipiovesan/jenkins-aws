output "instance_ip" {
  value = aws_instance.jenkins_master.public_ip
}