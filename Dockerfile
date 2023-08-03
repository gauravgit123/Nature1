# Pull the Ubuntu image in Dockerhub
FROM ubuntu:latest

# Create the file 
MAINTAINER "gauravkhandate@gmail.com"

# Update all application
RUN apt-get update && apt-get upgrade -y

# Install the openssh server 
RUN apt-get -y install openssh-server

# Active the openssh server 
ENTRYPOINT service ssh start && bash

