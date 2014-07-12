FROM deis/go
MAINTAINER OpDemand <info@opdemand.com>

WORKDIR $GOPATH/src/app
ONBUILD ADD . $GOPATH/src/app/
ONBUILD RUN go install app

CMD ["app"]
