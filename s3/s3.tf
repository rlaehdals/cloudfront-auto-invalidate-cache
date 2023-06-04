module "s3" {
  source = "../../modules/s3"

  bucket_name = var.bucket_name
  acl    = var.acl

  block_public_acls       = var.block_public_acls
  block_public_policy     = var.block_public_policy
  ignore_public_acls      = var.ignore_public_acls
  restrict_public_buckets = var.restrict_public_buckets

  versioning = var.versioning

  sse_algorithm = var.sse_algorithm

  tags = var.tags
}