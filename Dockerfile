FROM mirror.gcr.io/library/alpine:latest

LABEL org.opencontainers.image.source=https://github.com/ghtestuser5511/alpine-docker

RUN apk add --no-cache docker ca-certificates tzdata curl \
    && mkdir -p /var/lib/docker && rm -rf /tmp/*

EXPOSE 2375

CMD ["dockerd", "--host", "tcp://0.0.0.0:2375", "--tls=false"]
