# terraform {
#   backend "s3" {
#     bucket         = "karrabo-terraform-state-bucket-production"
#     key            = "pulsar/terraform.tfstate"
#     region         = "us-west-2"
#     encrypt        = true
#     dynamodb_table = "terraform-locks"
#   }
# }

terraform {
  backend "s3" {
    bucket = "karrabo-terraform-state-bucket-production"
    key    = "pulsar/dev/terraform.tfstate"
    region = "us-west-2"
  }
}