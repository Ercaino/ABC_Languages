# Hello World in Docker
# Requirements: Docker installed
# Execution: docker build -t hello-world-docker -f helloWorld_Docker.dockerfile . && docker run hello-world-docker

FROM alpine:latest

# Use the echo command to print the message
CMD ["echo", "Hello, World!"]
