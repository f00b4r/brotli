.PHONY: build build-base

build-buster:
	packer build packer/debian-buster-brotli.json

build-buster-base:
	packer build packer/debian-buster.json

build-bullseye:
	packer build packer/debian-bullseye-brotli.json

build-bullseye-base:
	packer build packer/debian-bullseye.json
