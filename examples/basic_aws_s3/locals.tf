locals {
  /*
  For resource tagging purpoese, calculate the root module path for use in
  tags
  */
  root_module_path = split("/", abspath(path.cwd))
  root_dir         = element(local.root_module_path, length(local.root_module_path) - 3)
  sub_dir          = element(local.root_module_path, length(local.root_module_path) - 2)
  module_dir       = element(local.root_module_path, length(local.root_module_path) - 1)

  owner = "jeanvisser"
  env   = "sandbox"

  tags = {
    owner       = local.owner
    managed_by  = "terraform"
    module_root = "${local.root_dir}/${local.sub_dir}/${local.module_dir}"
  }

  /*
  When testing this module, we create an unique bucket name using a date
  string.
  This is required to avoid a lengthy wait when deleting and recreating buckets
  while the AWS S3 global namespace becomes consistent
  */
  bucket_version = lower(formatdate("DD-MMM-YYYY-HHMM-ss", timestamp()))
  bucket_name    = "${local.owner}-${local.env}-${local.bucket_version}"
}
