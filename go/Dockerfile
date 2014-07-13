FROM ubuntu:14.04
MAINTAINER OpDemand <info@opdemand.com>

# install dependencies
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -yq \
    build-essential \
    curl

# install go
RUN curl -s https://storage.googleapis.com/golang/go1.3.src.tar.gz | tar -v -C /usr/local -xz
ENV PATH /usr/local/go/bin:$PATH
ENV GOPATH /go
RUN cd /usr/local/go/src && ./make.bash --no-clean 2>&1

# compile go for cross compilation
ENV PLATFORMS \
    linux/386 linux/arm \
    darwin/amd64 darwin/386 \
    freebsd/amd64 freebsd/386 freebsd/arm
# (set an explicit GOARM of 5 for maximum compatibility)
ENV GOARM 5
RUN cd /usr/local/go/src && bash -xc 'for platform in $PLATFORMS; do GOOS=${platform%/*} GOARCH=${platform##*/} ./make.bash --no-clean 2>&1; done'
