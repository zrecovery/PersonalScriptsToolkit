git clone https://github.com/vladmandic/automatic.git
export DOCKER_IMAGE=intel/intel-extension-for-pytorch:2.1.30-xpu
export CONTAINER_NAME=tmp_sd_build
export BUILD_IMAGE=sd:240622
podman run -itd \
    --replace \
    --net=host \
    --privileged \
    --device=/dev/dri \
    --ipc=host \
    --name $CONTAINER_NAME \
    $DOCKER_IMAGE 

podman cp automatic $CONTAINER_NAME:/app
podman cp start.sh $CONTAINER_NAME:/app/start.sh
podman exec $CONTAINER_NAME bash -c "chmod +x /app/start.sh"
podman exec $CONTAINER_NAME bash -c "/app/start.sh"
podman commit $CONTAINER_NAME $BUILD_IMAGE
podman rm -f $CONTAINER_NAME
