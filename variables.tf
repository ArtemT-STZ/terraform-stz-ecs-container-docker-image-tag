variable "service_name" {
  description = "The name of the service to get the docker image tag for."
  type        = string
}
variable "ecs_cluster_name" {
  description = "The name of the ECS cluster to get the docker image tag for."
  type        = string
}
