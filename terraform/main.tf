
resource "docker_image" "node_hello" {
  name = "ahelfouly/node-hello:latest"
}

resource "docker_container" "node_hello" {
  name  = "nodehello"
  image = docker_image.node_hello.name
  ports {
    internal = 3000
    external = 3000
  }
}