# Create Jenkins Server using AWS EC2 Instance

Configuration in this directory creates AWS VPC, Subnet, Route Tables, Internet Gateway, EC2 Instance and configure Jenkins Server.

Please use this template for Dev Environment only. use this in Production at your own risk

## Usage

To run this example you need to execute:

```bash
$ terraform init
$ terraform plan
$ terraform apply
```

By default the template use T2.Micro instance, if you want to change the instance type then pass

$ ec2_instance_type = T2.Large

You can pass other varialbes too to customize the template

The Configuration will generate the output 

## Output

Jenkins_IP_Address = <<EOT
    backend = 3.91.195.135:8080          (To access Jenkins Server)    <br />
    backend = 3.91.195.135:80            (To retrieve the initialAdminPassword)