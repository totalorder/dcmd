FROM alpine:3.7

RUN apk add --no-cache bash sudo

ARG USER_ID=1000
ARG GROUP_ID=1000
RUN addgroup -g ${GROUP_ID} -S dcmd && adduser -u ${USER_ID} -s /bin/bash -S -G dcmd dcmd && addgroup dcmd root
RUN echo "dcmd ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
