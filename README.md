# Jupyter Notebook Server in Docker Container

The official Jupyter organziation provides some [Docker images](https://github.com/jupyter/docker-stacks/), which have pretty complicated Dockerfiles that I don't understand. This repo provides a simple Dockerfile that installs and runs Jupyter Notebook server in a container.

## Build the Docker Image

```bash
docker build -t jpt .
```

## Run the Docker Container

```bash
docker run --rm -it -p 8888:8888 jpt
```
