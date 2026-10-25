variable "name" {
  type = string
}

variable "image" {
  type    = string
  default = "nginx:1.27-alpine"
}

variable "host_port" {
  type = number
}
