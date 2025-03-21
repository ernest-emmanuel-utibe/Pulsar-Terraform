resource "aws_cloudwatch_log_group" "pulsar_logs" {
    name = "/aws/eks/pulsar-logs"
    retention_in_days = 30
}