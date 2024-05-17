# get ecs service running image version via aws cli
# usage: ./get_ecs_service_image_version.sh <cluster_name> <service_name>
# example: ./get_ecs_service_image_version.sh mycluster myservice
#!/bin/sh

#read cluster name and service name from json file in stdin
eval "$(jq -r '@sh "ecs_cluster_name=\(.ecs_cluster_name) service_name=\(.service_name)"')"

TASK_DEFINITION=`aws ecs describe-services --cluster $ecs_cluster_name --services $service_name | jq -r '.services[0].deployments[0].taskDefinition'`
# get image version from task definition
IMAGE_VERSION=$(aws ecs describe-task-definition --task-definition $TASK_DEFINITION | jq -r '.taskDefinition.containerDefinitions[0].image' | awk -F ':' '{print $2}')
#return $IMAGE_VERSION in json format
jq -n --arg image_version "$IMAGE_VERSION" '{"image_version":$image_version}'

