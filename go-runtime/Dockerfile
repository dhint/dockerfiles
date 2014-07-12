FROM deis/go
MAINTAINER OpDemand <info@opdemand.com>

WORKDIR /gopath/src/app
ONBUILD ADD . /gopath/src/app/
ONBUILD RUN godep go build
