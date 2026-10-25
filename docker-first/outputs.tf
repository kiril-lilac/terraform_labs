output "network_name" {
  description = "Created Docker network"
  value       = docker_network.lab.name
}

output "container_name" {
  description = "Created Nginx container"
  value       = docker_container.nginx.name
}

output "nginx_url" {
  description = "Local URL for the Nginx container"
  value       = "http://localhost:${var.host_port}"
}
