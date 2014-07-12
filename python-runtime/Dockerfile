FROM        deis/python
MAINTAINER  OpDemand <info@opdemand.com>

WORKDIR /app
ONBUILD ADD requirements.txt /app/requirements.txt
ONBUILD RUN pip install -r /app/requirements.txt
ONBUILD ADD . /app
