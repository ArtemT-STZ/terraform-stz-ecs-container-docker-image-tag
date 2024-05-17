output "service_name_to_version_map" {
  value = {
    for service_name in local.service_names :
    service_name => module.get_docker_image_tag_by_task_id[service_name].service_docker_image_tag
  }
  description = "Map of service names to docker image tags."
}
