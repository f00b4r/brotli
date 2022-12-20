DOCKER_BUILDKIT ?= 1
NGINX ?= 1.22.1

.PHONY: build
build: build-buster build-bullseye

.PHONY: build-bullseye
build-bullseye:
	docker build \
		--target export \
		--build-arg DEBIAN=bullseye \
		--build-arg NGINX=${NGINX} \
		--tag f00b4r/brotli:bullseye \
		. \
		--output dist

.PHONY: build-buster
build-buster:
	docker build \
		--target export \
		--build-arg DEBIAN=buster \
		--build-arg NGINX=${NGINX} \
		--tag f00b4r/brotli:buster \
		. \
		--output dist
