FROM debian:buster-slim

RUN apt-get update && apt-get dist-upgrade -y && \
    apt-get install --no-install-recommends --no-install-suggests -y \
        gnupg1 \
        apt-transport-https \
        ca-certificates \
        git \
        gcc \
        wget \
        make \
        sudo \
        libpcre3 \
        libpcre3-dev \
        zlib1g \
        zlib1g-dev \
        openssl \
        libssl-dev && \
    apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 && \
    echo "deb http://nginx.org/packages/mainline/debian/ buster nginx" >> /etc/apt/sources.list && \
    apt-get update && \
    apt-get install --no-install-recommends --no-install-suggests -y \
        nginx \
        nginx-module-xslt \
        nginx-module-geoip \
        nginx-module-image-filter \
        nginx-module-njs \
        gettext-base

WORKDIR /srv
ADD ./build /srv

CMD sh mkbrotli.sh
