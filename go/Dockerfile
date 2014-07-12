FROM google/golang
MAINTAINER OpDemand <info@opdemand.com>

# HACK: install go v1.3 runtime until GoogleCloudPlatform/golang-docker#17 is merged
RUN rm -rf /goroot/*
RUN curl -s https://storage.googleapis.com/golang/go1.3.linux-amd64.tar.gz | tar -C $GOROOT -xzf - --strip-components 1
