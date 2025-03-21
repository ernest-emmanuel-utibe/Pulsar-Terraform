# terraform {
#   required_version = ">= 1.3.0"
#   backend "s3" {}  # Backend settings will be defined in backend.tf
# }

# provider "aws" {
#   region = var.aws_region
# }

# module "vpc" {
#   source      = "../../modules/vpc"
#   vpc_cidr    = "10.0.0.0/16"
# }

# module "eks" {
#   source          = "../../modules/eks"
#   eks_cluster_name = "pulsar-dev"
# }

# module "helm" {
#   source            = "../../modules/helm"
#   pulsar_chart_version = "latest"
# }

# module "secrets" {
#   source = "../../modules/secrets"
# }

# module "monitoring" {
#   source = "../../modules/monitoring"
# }


module "pulsar" {
  source = "../../"

  region      = "us-west-2"
  cluster_name = "pulsar-eks-dev"
}