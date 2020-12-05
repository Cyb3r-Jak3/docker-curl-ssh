FROM alpine:latest
RUN apk update \
  && apk add --no-cache openssh-client ca-certificates bash curl \
  && mkdir -p ~/.ssh \
  && touch ~/.ssh/known_hosts \
  && chmod 700 ~/.ssh \
  && chmod 644 ~/.ssh/known_hosts \
  && eval $(ssh-agent -s)