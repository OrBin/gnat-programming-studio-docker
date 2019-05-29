# gnat-programming-studio-docker
Docker image for AdaCore's GNAT Programming Studio (GPS)

## Running the container
Enable X server access from docker to host:
```bash
xhost +local:docker
```

Run the container:
```bash
docker run -it --rm -e DISPLAY=${DISPLAY} -v /tmp/.X11-unix:/tmp/.X11-unix orbin/gnat-programming-studio
```

