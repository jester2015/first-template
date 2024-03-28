output "deployment_name" {
  description = "The name of the Deployment."
  value       = kubernetes_deployment.example.metadata[0].name
}

output "deployment_generation" {
  description = "The generation of the Deployment."
  value       = kubernetes_deployment.example.metadata[0].generation
}