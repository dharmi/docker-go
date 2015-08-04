# Using wheezy from the official golang docker repo
FROM golang:1.4.1-wheezy

MAINTAINER dharmi@gmail.com

# Setting up working directory
RUN mkdir -p /go/src/main
WORKDIR /go/src/main
Add . /go/src/main/

# Install
RUN go install main

# Setting up environment variables
ENV ENV dev

# Expose the application to listen at 8080
EXPOSE 8080
ENTRYPOINT ["/go/bin/main"]