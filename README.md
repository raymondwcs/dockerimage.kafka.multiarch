# Build & Push Multiarch Docker Images of Apache Kafka
## Preparation
Follow the instructions [here](https://docs.docker.com/docker-for-mac/multi-arch/) to create a new *builder*.

## Steps
1. Login to [Docker Hub](http://hub.docker.com)
```
docker login
```
2. Build and publish a `linux/arm64/v8` and `linux/amd64` docker images.  Replace `docker-hub-id` with your Docker Hub userid
```
docker buildx build \
--push \
--platform linux/arm64/v8,linux/amd64 \
-t docker-hub-userid/kafka .
```