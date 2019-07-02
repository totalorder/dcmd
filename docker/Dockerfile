FROM alpine:3.7

RUN apk add --no-cache bash sudo

ADD container/entrypoint /entrypoint
RUN ln -s /entrypoint /usr/local/bin/dcmd
ADD container/dcmd /dcmd
ADD container/shared /shared
ADD container/executable /.executable

# Running docker as current user is a mess:
# https://jtreminio.com/blog/running-docker-containers-as-current-host-user/
ARG USER_ID=1000
ARG GROUP_ID=1000
RUN groups root
RUN addgroup -g ${GROUP_ID} -S dcmd && adduser -u ${USER_ID} -s /bin/bash -S -G dcmd dcmd && addgroup dcmd root
RUN echo "dcmd ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

ENV DCMD_NAME="dcmd"
ENV DCMD_IMAGE="dcmd"

WORKDIR /cwd
ENTRYPOINT ["/entrypoint"]
