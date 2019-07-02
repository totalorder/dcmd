FROM dcmd
RUN apk add --no-cache curl openssh
ARG DOCKER_CLIENT_VERSION="18.09.7"
RUN curl -fsSLO https://download.docker.com/linux/static/stable/x86_64/docker-${DOCKER_CLIENT_VERSION}.tgz \
  && tar xzvf docker-${DOCKER_CLIENT_VERSION}.tgz --strip 1 \
                 -C /usr/local/bin docker/docker \
  && rm docker-${DOCKER_CLIENT_VERSION}.tgz

ENV DCMD_NAME="exa"
ENV DCMD_IMAGE="example"
COPY dcmd /dcmd
