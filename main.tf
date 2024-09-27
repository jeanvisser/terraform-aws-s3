resource "aws_s3_bucket" "bucket" {
  # Ensure the bucket name is lowercase to match AWS naming requirement
  bucket = lower(var.bucket_name)

  tags = var.tags
}

