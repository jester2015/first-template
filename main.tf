resource "kubernetes_deployment" "example" {
  metadata {
    name = "example-deployment"
    labels = {
      app = "example"
    }
  }

  spec {
    replicas = 1
    selector {
      match_labels = {
        app = "example"
      }
    }

    template {
      metadata {
        labels = {
          app = "example"
        }
      }

      spec {
        container {
          image = var.image
          name  = "example"
        }
      }
    }
  }
}