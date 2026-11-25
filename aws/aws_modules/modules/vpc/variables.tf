variable "vpc_name" {
    description = "Name of the vpc"
    type = string
    default = "my-vpc-for-modules"
}

variable "vpc_cidr" {
    description = "CIDR block for the VPC"
    type = string
    default = "10.0.0.0/16"
}