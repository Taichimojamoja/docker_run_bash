#!/bin/bash
docker run -it --gpus all \
    -e NVIDIA_DRIVER_CAPABILITIES=all \
    -v /mnt/d/UserArea/j0135417/Documents/08_docker_mount:/mnt/ \
    --add-host hostname:127.0.0.1\
    --hostname hostname\
    -e XMODIFIRES \
    -e DISPLAY=$DISPLAY \
    -e QT_X11_NO_MITSHM=1 \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -u nvidia\
    -w /home/nvidia\
    --privileged \
    --net host \
    --name rider_csa_container \
    taichimojamoja/ubuntu_ros_opencv
