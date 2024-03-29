# A foundation image must include the following:
# - Installed packages: bash, sudo

ARG DCMD_FOUNDATION="totalorder/dcmd-foundation-alpine:latest"
FROM ${DCMD_FOUNDATION}
ARG DCMD_IMAGE="totalorder/dcmd-alpine:latest"
ENV DCMD_IMAGE="${DCMD_IMAGE}"
ENV DCMD_NAME="dcmd"
RUN echo "ALL ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

ADD container/entrypoint /entrypoint
RUN ln -s /entrypoint /usr/local/bin/dcmd
ADD container/dcmd /dcmd
ADD container/shared /shared
ADD container/executable /.executable
ADD container/executable-extras /.executable-extras
ADD container/bash-completion /.bash-completion
ADD container/xdg-open /usr/local/bin/xdg-open
RUN ln -s /usr/local/bin/xdg-open /usr/local/bin/open
ARG DCMD_VERSION="unknown"
RUN echo "${DCMD_VERSION}" > /.version

WORKDIR /cwd
ENTRYPOINT ["/entrypoint"]
