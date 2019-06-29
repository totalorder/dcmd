FROM alpine:3.7
RUN apk add --no-cache bash

ADD container/entrypoint /entrypoint
RUN ln -s /entrypoint /usr/local/bin/dcmd
ADD container/dcmd /dcmd
ADD container/shared /shared
ADD container/executable /.executable
RUN echo "dcmd" > /.dcmd-name
RUN echo "dcmd" > /.dcmd-image

WORKDIR /dcmd
ENTRYPOINT ["/entrypoint"]
