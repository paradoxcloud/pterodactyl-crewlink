FROM        node:alpine3.12

MAINTAINER  paradox.cloud <support@paradox.network>

RUN         apk update && apk add --no-cache nodejs
RUN         npm install -g yarn

USER        container
ENV         HOME /home/container
WORKDIR     /home/container

COPY        ./entrypoint.sh /entrypoint.sh
CMD         ["/bin/bash", "/entrypoint.sh"]
