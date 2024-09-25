variable "DOCKERHUB_REPO" {
  default = ""
}

variable "DOCKERHUB_IMG" {
  default = ""
}

variable "RELEASE_VERSION" {
  default = ""
}

variable "HUGGINGFACE_ACCESS_TOKEN" {
  default = ""
}

group "default" {
  targets = ["base"]
}

target "base" {
  context = "."
  dockerfile = "Dockerfile"
  target = "base"
  tags = ["${DOCKERHUB_REPO}/${DOCKERHUB_IMG}:${RELEASE_VERSION}-base"]
}
