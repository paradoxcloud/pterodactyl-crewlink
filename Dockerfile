FROM        alpine:3.12

MAINTAINER  paradox.cloud <support@paradox.network>

RUN         apk update && apk add --no-cache nodejs && npm install -g yarn

USER        container
ENV         HOME /home/container
WORKDIR     /home/container

COPY        ./entrypoint.sh /entrypoint.sh
CMD         ["/bin/sh", "/entrypoint.sh"]
