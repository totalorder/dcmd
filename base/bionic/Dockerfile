FROM ubuntu:bionic

RUN apt update && apt install -y sudo

ARG USER_ID=1000
ARG GROUP_ID=1000
RUN addgroup --gid ${GROUP_ID} dcmd
RUN adduser --uid ${USER_ID} --gid ${GROUP_ID} --shell /bin/bash dcmd
RUN echo "dcmd ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
