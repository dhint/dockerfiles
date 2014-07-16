FROM ubuntu:14.04
MAINTAINER OpDemand <info@opdemand.com>

# install dependencies
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -yq \
    build-essential \
    curl \
    git \
    mercurial \
    --no-install-recommends

# prepare go environment
ENV GOROOT /usr/local/go
RUN mkdir -p $GOROOT
ENV GOPATH /go
RUN mkdir -p $GOPATH
ENV PATH $GOROOT/bin:$GOPATH/bin:$PATH

# install go
RUN curl -sk https://storage.googleapis.com/golang/go1.3.src.tar.gz | tar -C $GOROOT -xzf - --strip-components 1
RUN cd /usr/local/go/src && ./make.bash --no-clean 2>&1

# compile go for cross compilation
ENV PLATFORMS \
    linux/386 linux/arm \
    darwin/amd64 darwin/386 \
    freebsd/amd64 freebsd/386 freebsd/arm
# (set an explicit GOARM of 5 for maximum compatibility)
ENV GOARM 5
RUN cd /usr/local/go/src && bash -xc 'for platform in $PLATFORMS; do GOOS=${platform%/*} GOARCH=${platform##*/} ./make.bash --no-clean 2>&1; done'
