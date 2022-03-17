terraform {
  backend "local" {
    path = "terraform.tfstate"
  }
}

provider "aws" {
  region = "eu-west-1"
}

module "s3" {
  source = "./s3"
  bucketName = "new-bucket"
}