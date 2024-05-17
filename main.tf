data "external" "service" {
  program = ["/bin/sh", "${path.module}/bin/get-docker-image-tag-by-task-id.sh"]
  query = {
    ecs_cluster_name = var.ecs_cluster_name,
    service_name     = var.service_name,
  }
}
