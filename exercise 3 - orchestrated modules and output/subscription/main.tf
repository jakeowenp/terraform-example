variable "topicArn" {}
variable "queueArn" {}

resource "aws_sns_topic_subscription" "subs" {
  topic_arn = var.topicArn
  protocol  = "sqs"
  endpoint  = var.queueArn
}