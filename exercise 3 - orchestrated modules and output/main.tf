terraform {
  backend "local" {
    path = "terraform.tfstate"
  }
}

provider "aws" {
  region = "eu-west-1"
}

module "sns" {
  source = "./sns"
}

module "sqs" {
  source = "./sqs"
}

module "subscription" {
  source = "./subscription"
  topicArn = module.sns.arn
  queueArn = module.sqs.arn
}