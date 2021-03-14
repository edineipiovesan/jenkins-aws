resource "aws_key_pair" "key_pair" {
  key_name   = "jenkins-master-key"
  public_key = file(var.public_key)
}
