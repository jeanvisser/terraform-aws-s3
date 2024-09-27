variable "bucket_name" {
  type = string
}

variable "tags" {
  description = "tag"
  type        = map(any)
  default     = {}
}
