resource "aws_instance" "jenkins_master" {
  ami                         = data.aws_ami.ami.id
  instance_type               = var.instance_type
  key_name                    = aws_key_pair.key_pair.key_name
  vpc_security_group_ids      = [aws_security_group.sg.id]
  subnet_id                   = aws_subnet.subnet.id
  availability_zone           = var.availability_zone
  associate_public_ip_address = "true"
  user_data                   = file(var.user_data)

  depends_on = [aws_internet_gateway.igw]
}