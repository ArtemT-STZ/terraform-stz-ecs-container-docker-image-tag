output "service_docker_image_tag" {
  value       = data.external.service.result["image_version"]
  description = "Running docker image tag for the service."
}
