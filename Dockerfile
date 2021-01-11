FROM        alpine

MAINTAINER  paradox.cloud <support@paradox.network>

RUN         apk update && apk add --no-cache nodejs git
RUN         npm install yarn -g

USER        container
ENV         HOME /home/container
WORKDIR     /home/container

COPY        ./entrypoint.sh /entrypoint.sh
CMD         ["/bin/bash", "/entrypoint.sh"]
