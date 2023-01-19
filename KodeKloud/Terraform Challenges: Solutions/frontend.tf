provider "kubernetes" {
  config_path = "/root/.kube/config"
}
resource "webapp-service" "group-name" {
  spec {
    port {
      port = 8080
      node_port = 30080
    }
  type = "NodePort"
  }
}


terraform {
  required_version = "1.1.5"
  required_providers {
    kubernetes = {
      source = "hashicorp/kubernetes"
      version = "~> 2.11.0"
    }
  }
}
