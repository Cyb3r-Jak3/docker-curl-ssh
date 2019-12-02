FROM alpine:latest
RUN apk update \
  && apk add --no-cache \
  openssh-client \
  ca-certificates \
  bash \
  curl