output "namespace" {
  value = kubernetes_namespace.demo.metadata[0].name
}

output "service_name" {
  value = kubernetes_service.nginx.metadata[0].name
}

output "service_dns" {
  value = "${kubernetes_service.nginx.metadata[0].name}.${kubernetes_namespace.demo.metadata[0].name}.svc.cluster.local"
}
