output "IPAddress" {
  value = templatefile("modules/terraform-Jenkins_Server/outputtemp.tpl", { port = ["8080", "80"], ip_addr = aws_instance.jenkins.public_ip })
}