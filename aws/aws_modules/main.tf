module "vpc" {
    source = "./modules/vpc"

    vpc_cidr = "10.0.0.0/16"
    vpc_name = "demo-vpc"
  
}


module "subnet" {
    source = "/root/terraform-labs/aws/aws_modules/modules/subnet"
    vpc_id = module.vpc.vpc_id

    subnet_cidr = "10.0.1.0/24"
    subnet_name = "demo-subnet"
    availability_zone = "eu-central-1a"
}

data "aws_ssm_parameter" "amazon_linux" {
  name = "/aws/service/ami-amazon-linux-latest/al2023-ami-kernel-default-x86_64"
}

module "prod-workload" {
    source = "/root/terraform-labs/aws/aws_modules/modules/ec2"
    vpc_id = module.vpc.vpc_id
    subnet_id = module.subnet.subnet_id 
    ami_id = data.aws_ssm_parameter.amazon_linux.value
    instance_type = "t3.micro"
    instance_name = "ec2-demo"
}
