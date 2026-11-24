variable "cidr_block" {
  type = string
  description = "Ip address range for our vpc"
  default = "192.168.0.0/16"
}

variable "vpc_name" {
    type = string
    description = "The name of the vpc"
    default = "my-terraform-vpc"
}