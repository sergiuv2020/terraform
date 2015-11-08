# Configure the Docker provider
provider "docker" {
    host = "http://192.168.99.100:2376/"
    cert_path = "C:/Users/sergiu/.docker/machine/certs/"
}
# Create a container
resource "docker_container" "test1" {
    image = "${docker_image.ubuntu.latest}"
    name = "test1"
}

resource "docker_image" "ubuntu" {
    name = "ubuntu:latest"
}
