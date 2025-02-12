
# Pulls the image
resource "docker_image" "ubuntu" {
    name = "ubuntu:latest"
}

# Create a container
resource "docker_container" "ubuntu" {
    image = docker_image.ubuntu.image_id
    name  = "ubuntu"
}