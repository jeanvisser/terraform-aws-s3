variable "bucket_name" {
  description = "Desired bucket name - must be globally unique"
  type = string
}

variable "tags" {
  description = "tag"
  type        = map(any)
  default     = {}
}
