# output "pulsar_chart" {
#     value = helm_release.pulsar.name
# }

output "pulsar_release_status" {
  value = helm_release.pulsar.status
}