# rpi-rabbitmq Dockerfile

This repository contains **Dockerfile** for rpi-rabbitmq based on [RabbitMQ](http://www.rabbitmq.com/)


### Base Docker Image

* [resin/rpi-raspbian](https://hub.docker.com/r/resin/rpi-raspbian/)


### Installation

1. Install [Docker](https://www.docker.com/).

2. Download [automated build](https://hub.docker.com/r/ronnyroos/rpi-rabbitmq/) from public [Docker Hub Registry](https://registry.hub.docker.com/): `docker pull ronnyroos/rpi-rabbitmq`


### Usage

#### Run `rpi-rabbitmq`

    docker run -d -p 5672:5672 -p 15672:15672 -v <log-dir>:/data/log -v <data-dir>:/data/mnesia ronnyroos/rpi-rabbitmq
