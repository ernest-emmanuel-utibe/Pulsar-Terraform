resource "aws_secretsmanager_secret" "pulsar_secret" {
    name = "pulsar-credentials"
}