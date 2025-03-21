output "secret_arn" {
    value = aws_secretsmanager_secret.pulsar_secret.arn
}