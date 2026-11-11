variable "kubeconfig_path" {
  description = "Path to kubeconfig"
  type        = string
  default     = "/root/.kube/config"
}

variable "namespace_name" {
  description = "Kubernetes namespace for the demo"
  type        = string
  default     = "terraform-dev"
}

variable "replica_count" {
  description = "Number of Nginx replicas"
  type        = number
  default     = 1
}

variable "nginx_image" {
  description = "Nginx container image"
  type        = string
  default     = "nginx:1.27-alpine"
}
