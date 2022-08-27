variable "ec2_instance_type" {
  type        = string
  default     = "t2.micro"
  description = "Please enter the instance type, if you want to provision different than T2 Micro"
}

variable "service_ports" {
  type        = list(number)
  description = "list of ingress ports"
  default     = [8080, 80, 22]
}

variable "network_cidr" {
  default     = "192.168.0.0/24"
  description = "Please enter the CIDR"
}

variable "availability_zones" {
  type        = list(any)
  default     = ["us-east-1a", "us-east-1d"]
  description = "Please enter the AZs"
}
