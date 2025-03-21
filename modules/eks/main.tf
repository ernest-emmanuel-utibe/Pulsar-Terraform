# # modules/eks/main.tf
# resource "aws_iam_role" "eks_role" {
#   name = "eks-role"

#   assume_role_policy = jsonencode({
#     Version = "2012-10-17"
#     Statement = [
#       {
#         Action = "sts:AssumeRole"
#         Effect = "Allow"
#         Principal = {
#           Service = "eks.amazonaws.com"
#         }
#       }
#     ]
#   })
# }

# # modules/eks/main.tf
# resource "aws_subnet" "public_subnet_1" {
#   vpc_id     = aws_vpc.main.id
#   cidr_block = "10.0.1.0/24"
# }

# resource "aws_subnet" "public_subnet_2" {
#   vpc_id     = aws_vpc.main.id
#   cidr_block = "10.0.2.0/24"
# }

# # modules/eks/main.tf
# resource "aws_eks_cluster" "pulsar_eks" {
#   name     = "pulsar-eks"
#   subnet_ids = var.public_subnet_ids
# }

# # modules/eks/main.tf
# resource "aws_eks_cluster" "pulsar_eks" {
#   name     = "pulsar-eks"
#   role_arn = var.eks_role_arn
# }

resource "aws_eks_cluster" "pulsar_eks" {
  name     = var.cluster_name
  role_arn = aws_iam_role.eks_role.arn
  vpc_config {
    subnet_ids = var.subnet_ids
  }
}

resource "aws_iam_role" "eks_role" {
  name = "eks-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Principal = {
          Service = "eks.amazonaws.com"
        }
      }
    ]
  })
}