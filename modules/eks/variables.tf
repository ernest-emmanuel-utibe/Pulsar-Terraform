# modules/eks/variables.tf
variable "eks_role_arn" {
  type = string
}

# modules/eks/variables.tf
variable "public_subnet_ids" {
  type = list(string)
}