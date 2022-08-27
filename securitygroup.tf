# resource "aws_security_group" "jenkins-sg" {
#   name = "jenkins-sg-123456" # can use expressions here
#   dynamic "ingress" {
#     for_each = var.service_ports
#     content {
#       from_port = ingress.value
#       to_port   = ingress.value
#       protocol  = "tcp"
#     }
#   }
#     egress {
#     from_port = 0
#     to_port = 0
#     protocol = "-1"
#     cidr_blocks = ["0.0.0.0/0"]
#   }
# }

resource "aws_security_group" "jenkins-sg" {
  name        = "jenkins-sg-12345678"
  description = "Allow incoming HTTP traffic from the internet"
  vpc_id      = aws_vpc.web_vpc.id
  ingress {
    from_port = 8080
    to_port   = 8080
    protocol  = "tcp"
    #cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port = 80
    to_port   = 80
    protocol  = "tcp"
    #cidr_blocks = ["0.0.0.0/0"]
  }
  # Allow all outbound traffic
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}