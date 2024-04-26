TAG_VERSION=v2
REGION=us-east-2
ACCOUNT=841714811245

REGISTRY=$ACCOUNT.dkr.ecr.$REGION.amazonaws.com
aws ecr get-login-password --region $REGION | docker login --username AWS --password-stdin $REGISTRY

echo "-------------------------------------------------------"
echo "1/1 - dbt_desconsideradas"
DOCKER_FILE_PATH=.
APP_NAME=dbt_desconsideradas
TAG=$REGISTRY/$APP_NAME:$TAG_VERSION
docker build . -f $DOCKER_FILE_PATH/Dockerfile -t $TAG
docker push $TAG
echo "-------------------------------------------------------"
