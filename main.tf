# resource "aws_instance" "Server100" {
#   instance_type          = "t2.micro"
#   availability_zone      = "us-east-1a"
#   subnet_id              = "subnet-0b6605f76b0dda7bd"
#   ami                    = "ami-08f3d892de259504d"
#   vpc_security_group_ids = [aws_security_group.stack-sg.id]
#   key_name               = "stackdevops_kpUS1"
#   root_block_device {
#     volume_type           = "gp2"
#     volume_size           = 10
#     delete_on_termination = true
#     encrypted             = "false"
#   }
#   tags = {
#     Name = "APPSERVER_MAIN"
#   }
# } 