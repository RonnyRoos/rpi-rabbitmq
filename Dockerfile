FROM resin/rpi-raspbian

MAINTAINER Ronny Roos <ronny@ronnyroos.com>

# Add files.
ADD bin/* /usr/local/bin/

RUN apt-get update && \
apt-get install -yqq \
rabbitmq-server 

RUN rabbitmq-plugins enable rabbitmq_management && \
	echo "[{rabbit, [{loopback_users, []}]}]." > /etc/rabbitmq/rabbitmq.config && \
	chmod +x /usr/local/bin/rabbitmq-start 

# Define environment variables.
ENV RABBITMQ_LOG_BASE /data/log
ENV RABBITMQ_MNESIA_BASE /data/mnesia

# Define mount points.
VOLUME ["/data/log", "/data/mnesia"]

# Define working directory.
WORKDIR /data

# Define default command.
CMD ["rabbitmq-start"]

# Expose ports.
EXPOSE 5672
EXPOSE 15672