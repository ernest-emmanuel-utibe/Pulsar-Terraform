# pulsar.tf
resource "helm_release" "pulsar" {
  name       = "pulsar"
  repository = "https://pulsar.apache.org/charts"
  chart      = "pulsar"
  version    = "3.0.0" # Check for the latest version

  namespace = "pulsar"
  create_namespace = true

  set {
    name  = "components.functions"
    value = "false" # Disable Pulsar Functions if not needed
  }

  set {
    name  = "volumes.persistence"
    value = "true"
  }

  set {
    name  = "volumes.storage_class"
    value = "gp2" # Use AWS EBS gp2 or gp3
  }

  # Customize resource requests/limits
  set {
    name  = "bookie.resources.requests.memory"
    value = "2Gi"
  }

  # Expose brokers via LoadBalancer
  set {
    name  = "broker.service.type"
    value = "LoadBalancer"
  }
}