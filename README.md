# Jupyter Notebook Server in Docker Container

The official Jupyter organziation provides some [Docker images](https://github.com/jupyter/docker-stacks/), which have pretty complicated Dockerfiles that I don't understand. This repo provides a simple Dockerfile that installs and runs Jupyter Notebook server in a container.

## Build the Docker Image

```bash
docker build -t jpt .
```

This installs Jupyter and a custom magic command.

## Run the Docker Container

```bash
docker run --rm -it -p 8888:8888 jpt
```

This prints a token on the screen, which you can copy-n-paste into the Web page in the following session.

## Access Jupyter from a Web Browser

Open a Web browser and direct to `localhost:8888` and input the token. Then you can create notebooks.  In a cell, you should be able to type

```
%lmagic
```

or

```
%%cmagic
"hello"
```
