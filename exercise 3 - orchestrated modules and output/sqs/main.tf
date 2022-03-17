resource "aws_sqs_queue" "test" {
  name = "jake-queue"
}

output "arn" {
    value = aws_sqs_queue.test.arn
}