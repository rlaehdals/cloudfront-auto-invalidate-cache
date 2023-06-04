variable "bucket_id" {
  type = string
}

variable "region" {
  type = string
}

variable "cloudfront_id" {
  type = string
}

variable "condition_value" {
  type = list(any)
}

variable "resources" {
  type = list(any)
}