# output "eks_cluster_id" {
#     value = aws_eks_cluster.pulsar_eks.id
# }

output "cluster_name" {
  value = aws_eks_cluster.pulsar_eks.name
}