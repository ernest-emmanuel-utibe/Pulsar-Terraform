# resource "helm_release" "pulsar" {
#     name       = "pulsar"
#     repository = "https://pulsar.apache.org/charts"
#     chart      = "pulsar"
#     values     = [file("values.yaml")]
# }

resource "helm_release" "pulsar" {
  name  = "pulsar"
  chart = "pulsar"

  values = [
    file("${path.module}/values.yaml")
  ]
}