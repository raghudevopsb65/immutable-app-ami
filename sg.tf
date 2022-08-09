resource "aws_security_group" "main" {
  name        = "${local.TAG_PREFIX}-sg"
  description = "${local.TAG_PREFIX}-sg"

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${local.TAG_PREFIX}-sg"
  }
}

locals {
  TAG_PREFIX = "${var.COMPONENT}-ami"
}
