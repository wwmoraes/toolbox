FROM alpine:edge

### Install dependencies
RUN apk --no-cache add \
  ca-certificates \
  busybox \
  busybox-extras \
  curl \
  bind-tools \
  ;

### RUN!
ENTRYPOINT [ "/bin/ash" ]
