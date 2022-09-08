#!/bin/bash
docker run -it --gpus all \
    -e XMODIFIRES \
    -e NVIDIA_DRIVER_CAPABILITIES=all \
    -e DISPLAY=$DISPLAY \
    -e QT_X11_NO_MITSHM=1 \
    -v /mnt/SSD_2TB/data/cs:/mnt/SSD_2TB/data/cs \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    --add-host hostname:127.0.0.1\
    --hostname hostname\
    -u nvidia\
    -w /home/nvidia\
    --privileged \
    --net host \
    --name rider_csa_container22 \
    taichimojamoja/ubuntu_ros_opencv
