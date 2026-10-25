resource "docker_container" "extra_nginx" {
  for_each = toset(var.extra_containers)

  name  = each.value
  image = docker_image.nginx.image_id

  networks_advanced {
    name = docker_network.lab.name
  }
}
