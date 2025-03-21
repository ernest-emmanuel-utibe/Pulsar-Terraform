# variable "aws_region" {
#   description = "AWS region"
#   default     = "us-west-2"
# }
variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-west-2"
}

variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
  default     = "pulsar-eks"
}