<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_external"></a> [external](#requirement\_external) | ~> 2.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_external"></a> [external](#provider\_external) | 2.3.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [external_external.service](https://registry.terraform.io/providers/hashicorp/external/latest/docs/data-sources/external) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ecs_cluster_name"></a> [ecs\_cluster\_name](#input\_ecs\_cluster\_name) | The name of the ECS cluster to get the docker image tag for. | `string` | n/a | yes |
| <a name="input_service_name"></a> [service\_name](#input\_service\_name) | The name of the service to get the docker image tag for. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_service_docker_image_tag"></a> [service\_docker\_image\_tag](#output\_service\_docker\_image\_tag) | Running docker image tag for the service. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
