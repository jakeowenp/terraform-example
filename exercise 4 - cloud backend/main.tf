terraform {
  backend "s3" {
    region  = "eu-west-1"
    bucket  = "tmp-terraform-demo"
    key     = "jake/terraform.tfstate"
  }
}


provider "aws" {
  region = "eu-west-1"
}
