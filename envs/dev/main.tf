
terraform {
  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 3.4"
    }
  }
}

provider "kubernetes" {
  config_path    = "~/.kube/config"
  config_context = "docker-desktop"
}

module "hello_app" {
  source = "../../modules/hello-app"

  namespace = "dev"
  image_tag = "v2"
  replicas  = 3
  port      = 8080
}

output "service_name" {
  value = module.hello_app.service_name
}

output "namespace" {
  value = module.hello_app.namespace
}
