resource "aws_sns_topic" "topic-test" {
  name = "jake-topic"
}

output "arn" {
    value = aws_sns_topic.topic-test.arn
}