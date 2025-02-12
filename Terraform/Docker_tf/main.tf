# Find the latest nginx image
resource "docker_image" "nginx" {
    name = "nginx:latest"
}

# Start a container using the nginx image
resource "docker_container" "nginx" {
    name  = "foo"
    image = docker_image.nginx.image_id

    ports {
        internal = 80
        external = 8080
    }
}