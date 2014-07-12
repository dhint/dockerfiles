FROM debian:wheezy
MAINTAINER OpDemand <info@opdemand.com>

# install common go dependencies
RUN apt-get update -y && apt-get install -yq curl build-essential ca-certificates git mercurial bzr

# prepare go environment
RUN mkdir /goroot
RUN mkdir /gopath
ENV GOROOT /goroot
ENV GOPATH /gopath
ENV PATH $PATH:$GOROOT/bin:$GOPATH/bin

# install go runtime
ADD https://storage.googleapis.com/golang/go1.3.linux-amd64.tar.gz /tmp/go1.3.linux-amd64.tar.gz
RUN tar -C $GOROOT -xzf /tmp/go1.3.linux-amd64.tar.gz --strip-components 1
