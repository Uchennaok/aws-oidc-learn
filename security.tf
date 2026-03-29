resource "aws_security_group" "stack-sg" {
  #  vpc_id = var.vpc
  name        = "STACK_TERRAFORM1" #this is the name of the security group, not the name
  description = "Stack IT Security Group For CliXX System"

  ingress {
    description = "http access"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "nfs access"
    from_port   = 2049
    to_port     = 2049
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "mysql/aurora"
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "ssh access"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name         = var.Name
    Environment  = var.Environment
    OwnerEmail   = var.OwnerEmail
    Subsystem    = var.Subsystem
    Backup       = var.Backup
    Organization = var.Organization
    Session      = var.Session
  }
}