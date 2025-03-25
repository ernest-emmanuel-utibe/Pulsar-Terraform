# variables.tf
variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-west-2"
}

variable "pulsar_version" {
  description = "Apache Pulsar Helm chart version"
  type        = string
  default     = "3.0.0"
}