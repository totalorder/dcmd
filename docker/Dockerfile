FROM alpine:3.7

ARG DOCKER_CLIENT_VERSION="18.09.7"
RUN apk add --no-cache bash curl
RUN curl -fsSLO https://download.docker.com/linux/static/stable/x86_64/docker-${DOCKER_CLIENT_VERSION}.tgz \
  && tar xzvf docker-${DOCKER_CLIENT_VERSION}.tgz --strip 1 \
                 -C /usr/local/bin docker/docker \
  && rm docker-${DOCKER_CLIENT_VERSION}.tgz

ADD container/entrypoint /entrypoint
RUN ln -s /entrypoint /usr/local/bin/dcmd
ADD container/dcmd /dcmd
ADD container/shared /shared
ADD container/executable /.executable
RUN echo "dcmd" > /.dcmd-name
RUN echo "dcmd" > /.dcmd-image

WORKDIR /dcmd
ENTRYPOINT ["/entrypoint"]
