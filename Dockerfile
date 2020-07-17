FROM google/cloud-sdk:alpine as gcloud

FROM alpine:edge

### gcloud
COPY --from=gcloud /google-cloud-sdk /google-cloud-sdk
COPY --from=gcloud /root/.config/gcloud /root/.config/gcloud
RUN cd /google-cloud-sdk/bin; find * -maxdepth 0 -type f -exec ln -sf /google-cloud-sdk/bin/{} /usr/local/bin/{} \;

### Install dependencies
RUN apk add --no-cache --update \
  ca-certificates \
  busybox \
  busybox-extras \
  curl \
  bind-tools \
  net-tools \
  python3 \
  tcpdump \
  fish \
  ; rm -rf /var/cache/apk/ /var/lib/apk/ /etc/apk/cache/

### set fish as the shell
ENV SHELL=/usr/bin/fish
SHELL [ "fish", "-c" ]

### RUN!
CMD [ "fish" ]
