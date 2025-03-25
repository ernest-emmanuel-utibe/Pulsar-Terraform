# outputs.tf
output "eks_cluster_name" {
  value = module.eks.cluster_name
}

output "pulsar_broker_endpoint" {
  value = helm_release.pulsar.status.ingress[0].hostname
}