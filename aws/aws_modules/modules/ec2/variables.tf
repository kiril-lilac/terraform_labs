variable "vpc_id" {
    description = "The ID of the VPC"
    type = string
  
}

variable "subnet_id" {
    description = "The ID of the subnet"
    type = string
}

variable "ami_id" {
    description = "The AMI ID to use for the instance"
    type = string
    default = "ami-083dedce92603a2ad"
  
}

variable "instance_type" {
    description = "The type of instance to start"
    type = string
}

variable "instance_name" {
    description = "Name of the EC2 instance"
    type = string
    default = "my-instance"
  
}
