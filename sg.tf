locals {
  ingress_ports = [22, 80, 443]
}

resource "aws_security_group" "sg" {
  vpc_id = aws_vpc.vpc.id

  # Dynamic ingress block to iterate over ingress ports local variables. Avoid blocks duplication.
  dynamic "ingress" {
    for_each = local.ingress_ports
    iterator = port

    content {
      from_port   = port.value
      to_port     = port.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }

  # Allow all outbound ports and protocols
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}