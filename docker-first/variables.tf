variable "network_name" {
  description = "Name of the Docker network"
  type        = string
  default     = "terraform-lab"
}

variable "container_name" {
  description = "Name of the Nginx container"
  type        = string
  default     = "terraform-nginx"
}

variable "nginx_image" {
  description = "Nginx container image"
  type        = string
  default     = "nginx:1.27-alpine"
}

variable "host_port" {
  description = "Host port exposed by Nginx"
  type        = number
  default     = 8081
}

variable "extra_containers" {
  description = "Additional Nginx containers"
  type        = set(string)
  default     = ["terraform-nginx-2", "terraform-nginx-3"]
}
