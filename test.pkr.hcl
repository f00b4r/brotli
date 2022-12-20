packer {
  required_plugins {
    docker = {
      version = ">= 1.0.8"
      source  = "github.com/hashicorp/docker"
    }
  }
}

source "docker" "debian11" {
  image   = "debian:11"
  commit  = false
  discard = true
}

build {
  name = "debian11"
  sources = [
    "source.docker.debian11"
  ]
  provisioner "shell" {
    inline = [
      "echo 'test' > /srv/test.txt"
    ]
  }
}
