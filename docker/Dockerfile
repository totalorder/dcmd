# A foundation image must include the following:
# - Installed packages: bash, sudo
# - A user and group called dcmd, with uid=1000 and gid=1000
#   and sudo access
#
# Running docker as current user is a mess, which is why the special
# user is required: https://jtreminio.com/blog/running-docker-containers-as-current-host-user/

ARG DCMD_FOUNDATION="dcmd-foundation-alpine:latest"
FROM ${DCMD_FOUNDATION}
ARG DCMD_IMAGE="dcmd-alpine:latest"
ENV DCMD_IMAGE="${DCMD_IMAGE}"
ENV DCMD_NAME="dcmd"

ADD container/entrypoint /entrypoint
RUN ln -s /entrypoint /usr/local/bin/dcmd
ADD container/dcmd /dcmd
ADD container/shared /shared
ADD container/executable /.executable

WORKDIR /cwd
ENTRYPOINT ["/entrypoint"]
