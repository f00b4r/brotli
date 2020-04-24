.PHONY: build build-base

build:
	packer build packer/debian-buster-brotli.json

build-base:
	packer build packer/debian-buster.json
