resource "aws_instance" "jenkins" {
  ami                         = data.aws_ami.AmazonLinux2.id
  instance_type               = var.ec2_instance_type
  vpc_security_group_ids      = [aws_security_group.jenkins-sg.id]
  subnet_id                   = aws_subnet.public_subnet[0].id
  associate_public_ip_address = true
  user_data                   = file("modules/terraform-Jenkins_Server/install_apache.sh")
  root_block_device {
    delete_on_termination = true
    volume_size           = "20"
  }
  tags = {
    Name        = "Jenkins_Server"
    Environment = "Dev"
  }
}
