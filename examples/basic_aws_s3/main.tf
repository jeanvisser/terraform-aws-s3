terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = ">= 5.0"
    }
  }
}

provider "aws" {
  region = "eu-west-1"
}

module "s3" {
  source  = "jeanvisser/s3/aws"
  version = "0.1.0"

  bucket_name = local.bucket_name
  tags        = local.tags
}
