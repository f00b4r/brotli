<h1 align=center>Brotli (precompiled)</h1>

<p align=center>
   🦾Precompiled brotli binaries for Nginx and other tools.
</p>

<p align=center>
🕹 <a href="https://f3l1x.io">f3l1x.io</a> | 💻 <a href="https://github.com/f3l1x">f3l1x</a> | 🐦 <a href="https://twitter.com/xf3l1x">@xf3l1x</a>
</p>

-----

## Usage

```Dockerfile
FROM dockette/debian:buster

ENV NGINX_VERSION=1.23.2
ENV NGINX_MODULES=/usr/lib/nginx/modules

RUN apt update
RUN apt install -y nginx curl
RUN curl -L https://github.com/f00b4r/brotli/releases/download/latest/debian-buster-${NGINX_VERSION}-ngx_http_brotli_filter_module.so -o ${NGINX_MODULES}/ngx_http_brotli_filter_module.so &&
```

## Build

This repo using tool [Docker](https://docs.docker.com/get-docker/).

```
make build
```

## Development

See [how to contribute](https://contributte.org/contributing.html) to this package.

This package is currently maintained by these authors.

<a href="https://github.com/f3l1x">
    <img width="80" height="80" src="https://avatars2.githubusercontent.com/u/538058?v=3&s=80">
</a>

-----

Consider to [support](https://github.com/sponsors/f3l1x) **f3l1x**. Also thank you for using this package.
