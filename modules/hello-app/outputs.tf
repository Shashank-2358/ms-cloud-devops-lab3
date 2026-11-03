
output "service_name" {
  value = kubernetes_service_v1.hello.metadata[0].name
}

output "namespace" {
  value = kubernetes_namespace_v1.app.metadata[0].name
}
