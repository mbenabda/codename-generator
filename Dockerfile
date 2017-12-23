FROM alpine:3.7

RUN mkdir -p /usr/app \
    && apk update \
    && apk add bash

COPY adjectives /usr/app/
COPY foods /usr/app/
COPY name.sh /usr/app/

RUN chmod +x /usr/app/name.sh

WORKDIR /usr/app

ENTRYPOINT [ "bash", "-c", "./name.sh" ]
