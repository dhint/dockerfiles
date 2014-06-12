FROM        ubuntu
MAINTAINER  OpDemand <info@opdemand.com>

RUN apt-get update

RUN apt-get install -qy language-pack-en
ENV LANGUAGE en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LC_ALL en_US.UTF-8

RUN locale-gen en_US.UTF-8
RUN dpkg-reconfigure locales

RUN echo "Etc/UTC" > /etc/timezone
RUN dpkg-reconfigure -f noninteractive tzdata

RUN apt-get install -y git-core libxml2-dev build-essential python python-dev
RUN apt-get install -y postgresql-client postgresql-client-common libpq5
RUN apt-get install -y libpq-dev

# install pip
RUN wget -qO- https://raw.githubusercontent.com/pypa/pip/1.5.5/contrib/get-pip.py | python -
