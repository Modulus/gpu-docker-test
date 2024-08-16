# Run with amd gpu
docker build -t roc .
docker run --device /dev/dri roc

**Official command**
docker run --device=/dev/kfd --device=/dev/dri --security-opt seccomp=unconfined --group-add video roc

**But this also works**
docker run --device=/dev/kfd --device=/dev/dri  roc

*Wait for output*


