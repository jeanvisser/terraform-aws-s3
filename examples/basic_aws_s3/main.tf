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

module "s3_storage" {
  source = "jeanvisser/terraform-aws-s3"

  bucket_name = local.bucket_name
  tags        = local.tags
}
