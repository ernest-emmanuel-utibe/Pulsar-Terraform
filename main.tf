# provider "aws" {
#   region = var.aws_region
# }


module "vpc" {
  source = "./modules/vpc"
  # Pass necessary variables here
}

module "eks" {
  source = "./modules/eks"
  vpc_id = module.vpc.vpc_id
  subnet_ids = module.vpc.public_subnet_ids
  # Pass necessary variables here
}

module "helm" {
  source = "./modules/helm"
  cluster_name = module.eks.cluster_name
  # Pass necessary variables here
}