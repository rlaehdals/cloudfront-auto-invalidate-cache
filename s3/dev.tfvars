bucket_name             = "" #bucket 이름 
acl                     = "private"
block_public_acls       = true
block_public_policy     = true
ignore_public_acls      = true
restrict_public_buckets = true
versioning              = "Enabled"
sse_algorithm           = "AES256"
tags = {
  Terraform  = "true"
  Enviroment = "dev"
}
region = "ap-northeast-2"